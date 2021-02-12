// This file isn't very well documented, but that shouldn't be a huge problem
// because most of this is a fairly straightforward port of the scikit-image
// implementation which can be found in
// https://github.com/chintak/scikit-image/blob/inpaint/skimage/filter/_inpaint_fmm.pyx

const HeapQueue = require('./heapqueue.js');


const LARGE_VALUE = 1e6;
const SMALL_VALUE = 1e-6;


// this is meant to return the x-gradient
function grad_func(array, n, step, flag) {
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


function eikonal(n1, n2, flag, u) {
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


function inpaint_point(n, flag, u, image, width, height, indices_centered) {
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
		// const gradx_img = grad_func(image, nb, 1) + SMALL_VALUE,
		// 	grady_img = grad_func(image, nb, width) + SMALL_VALUE;

		Ia += weight * image[nb];
		// Jx -= weight * gradx_img * rx
		// Jy -= weight * grady_img * ry
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


function InpaintTelea(width, height, image, mask, radius) {
	if (!radius) {
		radius = 5;
	}

	const size = width * height;
	const flag = new Uint8Array(size);
	const u = new Float32Array(size);

	for (let i = 0; i < size; i++) {
		if (!mask[i]) {
			continue;
		}
		// this is the equivalent of doing a morphological dilation with
		// a 1-pixel cross structuring element for first pass through flag
		flag[i + 1] = flag[i] = flag[i - 1] = flag[i + width] = flag[
			i - width
		] = 1;
	}

	for (let i = 0; i < size; i++) {
		flag[i] = flag[i] * 2 - (mask[i] ^ flag[i]);
		if (flag[i] == 2) {
			// UNKNOWN
			u[i] = LARGE_VALUE;
		}
	}

	const heap = new HeapQueue(function (a, b) {
		return a[0] - b[0];
	}); // sort by first thingy

	for (let i = 0; i < size; i++) {
		if (flag[i] == 1) {
			// BAND
			heap.push([u[i], i]);
		}
	}

	const indices_centered = [];
	// generate a mask for a circular structuring element
	for (let i = -radius; i <= radius; i++) {
		const h = Math.floor(Math.sqrt(radius * radius - i * i));
		for (let j = -h; j <= h; j++) {
			indices_centered.push(i + j * width);
		}
	}

	while (heap.length) {
		const n = heap.pop()[1];
		const i = n % width;
		const j = Math.floor(n / width);
		flag[n] = 0; // KNOWN
		if (i <= 1 || j <= 1 || i >= width - 1 || j >= height - 1) {
			continue;
		}
		for (let k = 0; k < 4; k++) {
			const nb = n + [-width, -1, width, 1][k];
			if (flag[nb] != 0) {
				// not KNOWN
				u[nb] = Math.min(
					eikonal(nb - width, nb - 1, flag, u),
					eikonal(nb + width, nb - 1, flag, u),
					eikonal(nb - width, nb + 1, flag, u),
					eikonal(nb + width, nb + 1, flag, u),
				);
				if (flag[nb] == 2) {
					// UNKNOWN
					flag[nb] = 1; // BAND
					heap.push([u[nb], nb]);
					inpaint_point(nb, flag, u, image, width, height, indices_centered);
				}
			}
		}
	}
	return image;
}
