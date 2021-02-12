const LARGE_VALUE = f32(1e6);
const SMALL_VALUE = f32(1e-6);


function eikonal(n1: i32, n2: i32, flag: Uint8Array, u: Float32Array): f32 {
	let u_out = LARGE_VALUE;
	const u1 = u[n1];
	const u2 = u[n2];
	if (flag[n1] == 0) {
		if (flag[n2] == 0) {
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
	} else if (flag[n2] == 0) {
		u_out = 1 + u2;
	}
	return u_out;
}


function grad_func(array: Float32Array, n: i32, step: i32, flag: Uint8Array): f32 {
	if (flag[n + step] != 2 /* UNKNOWN */) {
		if (flag[n - step] != 2) {
			return (array[n + step] - array[n - step]) * 0.5;
		} else {
			return array[n + step] - array[n];
		}
	} else {
		if (flag[n - step] != 2) {
			return array[n] - array[n - step];
		} else {
			return 0;
		}
	}
}


function inpaint_point(
	n: i32,
	flag: Uint8Array,
	u: Float32Array,
	image: Uint8Array, // TODO: ?
	width: i32,
	height: i32,
	indices_centered: Array<i32>
): void {
	let Ia = 0;
	let norm = 0;
	// const Jx = 0, Jy = 0;
	const gradx_u = grad_func(u, n, 1, flag),
		grady_u = grad_func(u, n, width, flag);

	const i = n % width,
		j = Math.floor(n / width);

	for (let k = 0; k < indices_centered.length; k++) {
		const nb = n + indices_centered[k];
		const i_nb = nb % width,
			j_nb = Math.floor(nb / width);

		if (
			i_nb <= 1 ||
			j_nb <= 1 ||
			i_nb >= width - 1 ||
			j_nb >= height - 1
		) {
			continue;
		}

		if (flag[nb] != 0 /*KNOWN*/) {
			continue;
		}

		const rx = i - i_nb;
		const ry = j - j_nb;

		const geometric_dst =
			1 / ((rx * rx + ry * ry) * Math.sqrt(rx * rx + ry * ry));
		const levelset_dst = 1 / (1 + Math.abs(u[nb] - u[n]));
		const direction = Math.abs(rx * gradx_u + ry * grady_u);
		const weight = geometric_dst * levelset_dst * direction + SMALL_VALUE;

		Ia += weight * image[nb];
		norm += weight;
	}
	// the fmm.py which this is based on actually implements a slightly different
	// algorithm which apparently "considers the effect of gradient of intensity value"
	// which is some kind of voodoo magic that I don't understand which is apparently
	// in the OpenCV implementation. Unless I've been porting the algorithm wrong,
	// which is certainly a possibility and I invested quite a bit of effort into
	// that hypothesis by way of rewriting and checking every line of code a few
	// times.
	image[n] = Ia / norm;
	// image[n] = Ia / norm + (Jx + Jy) / Math.sqrt(Jx * Jx + Jy * Jy);
}


export function inpaint(width: i32, height: i32): void {
	const radius = 5;
	const size = width * height;
	const len = size * 4;

	const flag = new Uint8Array(size);
	const u = new Float32Array(size);

	for (let i = 0; i < size; i++) {
		const imgI = i;
		const maskI = i + len;

		const maskVal = load<u8>(maskI);
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
		const maskI = i + len;
		const maskVal = load<u8>(maskI);
		flag[i] = flag[i] * 2 - (maskVal ^ flag[i]);
		if (flag[i] == 2) { // UNKNOWN
			u[i] = LARGE_VALUE;
		}
	}

	// // sort by first thingy
	// const heap = new HeapQueue((a, b) => a[0] - b[0]);

	// for (let i = 0; i < size; i++) {
	// 	if (flag[i] == 1) { // BAND
	// 		heap.push([u[i], i]);
	// 	}
	// }

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

	// while (heap.length) {
	// 	const n = heap.pop()[1];
	// 	const i = n % width;
	// 	const j = Math.floor(n / width);
	// 	flag[n] = 0; // KNOWN
	// 	if (i <= 1 || j <= 1 || i >= width - 1 || j >= height - 1) {
	// 		continue;
	// 	}
	// 	for (let k = 0; k < 4; k++) {
	// 		const nb = n + [-width, -1, width, 1][k];
	// 		if (flag[nb] != 0) {
	// 			// not KNOWN
	// 			u[nb] = Math.min(
	// 				eikonal(nb - width, nb - 1, flag, u),
	// 				eikonal(nb + width, nb - 1, flag, u),
	// 				eikonal(nb - width, nb + 1, flag, u),
	// 				eikonal(nb + width, nb + 1, flag, u),
	// 			);
	// 			if (flag[nb] == 2) {
	// 				// UNKNOWN
	// 				flag[nb] = 1; // BAND
	// 				heap.push([u[nb], nb]);
	// 				inpaint_point(nb, flag, u, image, width, height, indices_centered);
	// 			}
	// 		}
	// 	}
	// }
	// return image;

	// for (let i = 0; i < len; i += 4) {
	// 	const r = load<u8>(i + 0);
	// 	const g = load<u8>(i + 1);
	// 	const b = load<u8>(i + 2);

	// 	// const gray = u8(r * 0.2126 + g * 0.7152 + b * 0.0722);

	// 	store<u8>(i + 0, gray);
	// 	store<u8>(i + 1, gray);
	// 	store<u8>(i + 2, gray);
	// }
}
