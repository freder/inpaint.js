import HeapQueue from './HeapQueue';


export const Int32Array_ID = idof<Int32Array>();


const LARGE_VALUE: f64 = 1e6;
const SMALL_VALUE: f64 = 1e-6;
const RADIUS: i32 = 5;


function min<T>(vals: Array<T>): T {
	let lowest: T = Infinity;
	for (let i = 0; i < vals.length; i++) {
		if (unchecked(vals[i]) < lowest) {
			lowest = unchecked(vals[i]);
		}
	}
	return lowest;
}


function eikonal(n1: i32, n2: i32, flag: Int32Array, u: Float64Array): f64 {
	let u_out = LARGE_VALUE;
	const u1 = unchecked(u[n1]);
	const u2 = unchecked(u[n2]);
	const f1 = unchecked(flag[n1]);
	const f2 = unchecked(flag[n2]);
	if (f1 == 0) {
		if (f2 == 0) {
			const perp = Math.sqrt(2 - (u1 - u2) * (u1 - u2));
			let s = (u1 + u2 - perp) * 0.5;
			if (s >= u1 && s >= u2) {
				u_out = s;
			} else {
				s += perp;
				if (s >= u1 && s >= u2) {
					u_out = s;
				}
			}
		} else {
			u_out = 1 + u1;
		}
	} else if (f2 == 0) {
		u_out = (1 + u2);
	}
	return u_out;
}


function grad_func(u: Float64Array, n: i32, step: i32, flag: Int32Array): f64 {
	if (unchecked(flag[n + step]) != 2) { // UNKNOWN
		if (unchecked(flag[n - step]) != 2) {
			return (unchecked(u[n + step] - u[n - step])) * 0.5;
		} else {
			return unchecked(u[n + step] - u[n]);
		}
	} else {
		if (unchecked(flag[n - step]) != 2) {
			return unchecked(u[n] - u[n - step]);
		} else {
			return 0;
		}
	}
}


function inpaint_point(
	n: i32,
	flag: Int32Array,
	u: Float64Array,
	image: Int32Array,
	width: i32,
	height: i32,
	indices_centered: Array<i32>
): void {
	let Ia: f64 = 0;
	let norm: f64 = 0;

	const gradx_u = grad_func(u, n, 1, flag);
	const grady_u = grad_func(u, n, width, flag);

	const i = i32(n % width);
	const j = i32(Math.floor(n / width));

	for (let k = 0; k < indices_centered.length; k++) {
		const nb = n + unchecked(indices_centered[k]);
		const i_nb = nb % width;
		const j_nb = Math.floor(nb / width);

		if (
			i_nb <= 1 ||
			j_nb <= 1 ||
			i_nb >= width - 1 ||
			j_nb >= height - 1
		) {
			continue;
		}

		if (unchecked(flag[nb]) != 0 /*KNOWN*/) {
			continue;
		}

		const rx = i - i_nb;
		const ry = j - j_nb;
		const rx2 = rx * rx;
		const ry2 = ry * ry;

		const geometric_dst = 1 / ((rx2 + ry2) * Math.sqrt(rx2 + ry2));
		const levelset_dst = 1 / (1 + Math.abs(unchecked(u[nb]) - unchecked(u[n])));
		const direction = Math.abs(rx * gradx_u + ry * grady_u);
		const weight = geometric_dst * levelset_dst * direction + SMALL_VALUE;

		Ia += weight * unchecked(image[nb]);
		norm += weight;
	}
	// the fmm.py which this is based on actually implements a slightly different
	// algorithm which apparently "considers the effect of gradient of intensity value"
	// which is some kind of voodoo magic that I don't understand which is apparently
	// in the OpenCV implementation. Unless I've been porting the algorithm wrong,
	// which is certainly a possibility and I invested quite a bit of effort into
	// that hypothesis by way of rewriting and checking every line of code a few
	// times.
	image[n] = i32(Ia / norm);
	// image[n] = Ia / norm + (Jx + Jy) / Math.sqrt(Jx * Jx + Jy * Jy);
}


function inpaintChannel(
	width: i32,
	height: i32,
	channel: Int32Array,
	mask: Int32Array,
	heap: HeapQueue
): void {
	const size = width * height;
	const flag = new Int32Array(size);
	const u = new Float64Array(size);

	for (let i = 0; i < size; i++) {
		if (!unchecked(mask[i])) {
			continue;
		}
		// this is the equivalent of doing a morphological dilation with
		// a 1-pixel cross structuring element for first pass through flag
		unchecked(flag[i + 1]     = 1);
		unchecked(flag[i]         = 1);
		unchecked(flag[i - 1]     = 1);
		unchecked(flag[i + width] = 1);
		unchecked(flag[i - width] = 1);
	}

	for (let i = 0; i < size; i++) {
		unchecked(flag[i] = flag[i] * 2 - (mask[i] ^ flag[i]));
		if (unchecked(flag[i]) == 2) { // UNKNOWN
			unchecked(u[i] = LARGE_VALUE);
		} else if (unchecked(flag[i]) == 1) { // BAND
			heap.push(unchecked(u[i]), i);
		}
	}

	const indices_centered = new Array<i32>();
	// generate a mask for a circular structuring element
	const radius2 = RADIUS * RADIUS;
	for (let i = -RADIUS; i <= RADIUS; i++) {
		const h = i32(Math.floor(
			Math.sqrt(radius2 - i * i)
		));
		for (let j = -h; j <= h; j++) {
			indices_centered.push(i + j * width);
		}
	}

	const a = [-width, -1, width, 1];
	while (heap.length) {
		const n = heap.pop();
		const i = n % width;
		const j = Math.floor(n / width);
		flag[n] = 0; // KNOWN
		if (i <= 1 || j <= 1 || i >= width - 1 || j >= height - 1) {
			continue;
		}
		for (let k = 0; k < 4; k++) {
			const nb = n + unchecked(a[k]);
			if (unchecked(flag[nb]) != 0) { // not KNOWN
				unchecked(
					u[nb] = min([
						eikonal(nb - width, nb - 1, flag, u),
						eikonal(nb + width, nb - 1, flag, u),
						eikonal(nb - width, nb + 1, flag, u),
						eikonal(nb + width, nb + 1, flag, u),
					])
				);
				if (unchecked(flag[nb]) == 2) { // UNKNOWN
					unchecked(flag[nb] = 1); // BAND
					heap.push(unchecked(u[nb]), nb);
					inpaint_point(nb, flag, u, channel, width, height, indices_centered);
				}
			}
		}
	}
}


export function inpaint(
	width: i32,
	height: i32,
	img: Int32Array,
	mask: Int32Array
): void {
	const size = width * height;
	const channelR = new Int32Array(size);
	const channelG = new Int32Array(size);
	const channelB = new Int32Array(size);
	for (let i = 0; i < size; i++) {
		const i4 = i * 4;
		unchecked(channelR[i] = img[i4 + 0]);
		unchecked(channelG[i] = img[i4 + 1]);
		unchecked(channelB[i] = img[i4 + 2]);
	}
	const heap = new HeapQueue();
	inpaintChannel(width, height, channelR, mask, heap);
	inpaintChannel(width, height, channelG, mask, heap);
	inpaintChannel(width, height, channelB, mask, heap);
	for (let i = 0; i < size; i++) {
		const i4 = i * 4;
		unchecked(img[i4 + 0] = channelR[i]);
		unchecked(img[i4 + 1] = channelG[i]);
		unchecked(img[i4 + 2] = channelB[i]);
	}
}
