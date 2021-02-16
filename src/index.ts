import HeapQueue from './HeapQueue';


export const Int32Array_ID = idof<Int32Array>();


const LARGE_VALUE = f32(1e6);
const SMALL_VALUE = f32(1e-6);
const radius = i32(5);


function min<T>(vals: Array<T>): T {
	let lowest: T = Infinity;
	for (let i = 0; i < vals.length; i++) {
		if (unchecked(vals[i]) < lowest) {
			lowest = unchecked(vals[i]);
		}
	}
	return lowest;
}


function eikonal(n1: i32, n2: i32, flag: Int32Array, u: Float32Array): f32 {
	let u_out = LARGE_VALUE;
	const u1 = unchecked(u[n1]);
	const u2 = unchecked(u[n2]);
	if (unchecked(flag[n1]) == 0) {
		if (unchecked(flag[n2]) == 0) {
			const perp = f32(Math.sqrt(2 - (u1 - u2) * (u1 - u2)));
			let s = f32((u1 + u2 - perp) * 0.5);
			if (s >= u1 && s >= u2) {
				u_out = (s);
			} else {
				s += perp;
				if (s >= u1 && s >= u2) {
					u_out = (s);
				}
			}
		} else {
			u_out = (1 + u1);
		}
	} else if (unchecked(flag[n2]) == 0) {
		u_out = (1 + u2);
	}
	return u_out;
}


function grad_func(array: Float32Array, n: i32, step: i32, flag: Int32Array): f32 {
	if (unchecked(flag[n + step]) != 2) { // UNKNOWN
		if (unchecked(flag[n - step]) != 2) {
			return (unchecked(array[n + step]) - unchecked(array[n - step])) * 0.5;
		} else {
			return unchecked(array[n + step]) - unchecked(array[n]);
		}
	} else {
		if (unchecked(flag[n - step]) != 2) {
			return unchecked(array[n]) - unchecked(array[n - step]);
		} else {
			return 0;
		}
	}
}


function inpaint_point(
	n: i32,
	flag: Int32Array,
	u: Float32Array,
	image: Int32Array,
	width: i32,
	height: i32,
	indices_centered: Array<i32>
): void {
	let Ia: f32 = 0;
	let norm: f32 = 0;

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

		const rx = f32(i - i_nb);
		const ry = f32(j - j_nb);
		const rx2 = rx * rx;
		const ry2 = ry * ry;

		const geometric_dst = f32(1 / ((rx2 + ry2) * Math.sqrt(rx2 + ry2)));
		const levelset_dst = f32(1 / (1 + Math.abs(unchecked(u[nb]) - unchecked(u[n]))));
		const direction = f32(Math.abs(rx * gradx_u + ry * grady_u));
		const weight: f32 = geometric_dst * levelset_dst * direction + SMALL_VALUE;

		Ia += weight * f32(unchecked(image[nb]));
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
	flag: Int32Array,
	u: Float32Array,
	heap: HeapQueue
): void {
	const size = width * height;

	for (let i = 0; i < size; i++) {
		const maskVal = unchecked(mask[i]);
		if (!maskVal) {
			continue;
		}
		// this is the equivalent of doing a morphological dilation with
		// a 1-pixel cross structuring element for first pass through flag
		flag[i + 1]     = 1;
		flag[i]         = 1;
		flag[i - 1]     = 1;
		flag[i + width] = 1;
		flag[i - width] = 1;
	}

	for (let i = 0; i < size; i++) {
		const maskVal = unchecked(mask[i]);
		flag[i] = flag[i] * 2 - (maskVal ^ unchecked(flag[i]));
		if (flag[i] == 2) { // UNKNOWN
			u[i] = LARGE_VALUE;
		} else if (flag[i] == 1) { // BAND
			heap.push(unchecked(u[i]), i);
		}
	}

	const indices_centered = new Array<i32>();
	// generate a mask for a circular structuring element
	const radius2 = radius * radius;
	for (let i = -radius; i <= radius; i++) {
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
			if (flag[nb] != 0) { // not KNOWN
				u[nb] = min([
					eikonal(nb - width, nb - 1, flag, u),
					eikonal(nb + width, nb - 1, flag, u),
					eikonal(nb - width, nb + 1, flag, u),
					eikonal(nb + width, nb + 1, flag, u),
				]);
				if (flag[nb] == 2) { // UNKNOWN
					flag[nb] = 1; // BAND
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
	channelR: Int32Array,
	channelG: Int32Array,
	channelB: Int32Array,
	mask: Int32Array
): void {
	const size = width * height;
	const flag = new Int32Array(size);
	const u = new Float32Array(size);
	const heap = new HeapQueue();
	inpaintChannel(width, height, channelR, mask, flag, u, heap);
	inpaintChannel(width, height, channelG, mask, flag, u, heap);
	inpaintChannel(width, height, channelB, mask, flag, u, heap);
}
