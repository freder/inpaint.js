/* global InpaintTelea */

function createImgCanvas(img) {
	const canvas = document.createElement('canvas');
	const { width, height } = img;
	canvas.width = width;
	canvas.height = height;
	document.body.appendChild(canvas);
	const ctx = canvas.getContext('2d');
	ctx.drawImage(img, 0, 0);
	return { canvas, ctx };
}


const logError = (_msg, _file, line, column) => {
	console.error(`Error at ${line}:${column}`);
};


// eslint-disable-next-line no-unused-vars
function main() {
	const img = new Image();
	img.onload = () => {
		const { width, height } = img;

		const arraySize = width * height * 4;
		// we need space for the image and the mask
		const numPages = 2 * arraySize / (64 * 1000); // 64kb per page
		const memory = new WebAssembly.Memory({
			initial: numPages
		});

		WebAssembly
			.instantiateStreaming(
				fetch('/build/untouched.wasm'),
				{
					env: {
						memory,
						abort: logError
					}
				}
			)
			.then(({ instance }) => {
				const { add } = instance.exports;
				console.log(add(1, 666));

				// load bytes into memory
				const bytes = new Uint8ClampedArray(memory.buffer);

				// for (let i = 0; i < data.length; i++)
				// 	bytes[i] = data[i];

				// instance.exports.convertToGrayscale(width, height, 80);

				// // load data from memory
				// for (let i = 0; i < bytes.length; i++) {
				// 	data[i] = bytes[i];
				// }

				// ctx.putImageData(imageData, 0, 0);
			});

		document.body.appendChild(img);
		const { ctx, canvas } = createImgCanvas(img);
		demo({ ctx, canvas });
	};
	img.src = 'skid.jpg';
}


function createMask(imgData) {
	const { data, width, height } = imgData;
	const mask_u8 = new Uint8Array(width * height);
	for (let i = 0; i < data.length / 4; i++) {
		const Y = (
			.299 * data[4 * i] +
			.587 * data[4 * i + 1] +
			.114 * data[4 * i + 2]
		);
		if (Y > 230) {
			const rad = 6;
			for (let dx = -rad; dx <= rad; dx++) {
				for (let dy = -rad; dy <= rad; dy++) {
					if (dx * dx + dy * dy <= rad * rad) {
						mask_u8[i + dx + dy * width] = 1;
					}
				}
			}
		}
	}
	return mask_u8;
}

function demo({ ctx, canvas }) {
	const { width, height } = canvas;
	const imgData = ctx.getImageData(0, 0, width, height);

	const mask_u8 = createMask(imgData);

	let img_u8;
	for (let channel = 0; channel < 3; channel++) {
		img_u8 = new Uint8Array(width * height);
		for (let n = 0; n < imgData.data.length; n+=4) {
			img_u8[n / 4] = imgData.data[n + channel];
		}
		InpaintTelea(width, height, img_u8, mask_u8);
		for (let i = 0; i < img_u8.length; i++) {
			imgData.data[4 * i + channel] = img_u8[i];
		}
	}

	// render result back to canvas
	for (let i = 0; i < img_u8.length; i++) {
		imgData.data[4 * i + 3] = 255;
	}
	ctx.putImageData(imgData, 0, 0);
}
