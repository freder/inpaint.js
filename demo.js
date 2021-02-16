/* global loader, InpaintTelea */

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


const logError = (_msg, _file, line, column) => {
	console.error(`Error at ${line}:${column}`);
};


// eslint-disable-next-line no-unused-vars
function main() {
	const img = new Image();
	img.onload = () => {
		document.body.appendChild(img);
		const { ctx, canvas } = createImgCanvas(img);
		const { width, height } = img;

		const imgData = ctx.getImageData(0, 0, width, height);

		// we need space for the image and the mask
		// both are one single channel, as we will do this
		// for R, G, and B separately
		const arraySize = width * height * 1;
		// const pageSize = (64 * 1024); // 64kb per page
		// const numPages = Math.ceil(2 * arraySize / pageSize);
		// const memory = new WebAssembly.Memory({
		// 	memoryBase: 0,
		// 	initial: numPages,
		// });

		// WebAssembly
		loader
			.instantiateStreaming(
				fetch('/build/untouched.wasm'),
				{
					env: {
						// memory,
						abort: logError
					}
				}
			)
			.then((instance) => {
				const {
					inpaint,
					// getMemorySize,

					__newArray,
					// __getArrayView,
					__getUint8ArrayView,
					__pin,
					__unpin,
					Uint8Array_ID,
				} = instance.exports;
				// console.log('memory pages:', getMemorySize());
				console.log(instance.exports);

				const channel = new Uint8Array(arraySize);
				for (let i = 0; i < channel.length; i++) {
					channel[i] = imgData.data[i * 4];
				}
				const mask = createMask(imgData);

				const channelPtr = __pin(__newArray(Uint8Array_ID, channel));
				const maskPtr = __pin(__newArray(Uint8Array_ID, mask));
				inpaint(width, height, channelPtr, maskPtr);

				const channelView = __getUint8ArrayView(channelPtr);
				for (let i = 0; i < channelView.length; i++) {
					const i4 = 4 * i;
					imgData.data[i4 + 0] = channelView[i];
					imgData.data[i4 + 1] = 0;
					imgData.data[i4 + 2] = 0;
					imgData.data[i4 + 1] = 255;
				}
				ctx.putImageData(imgData, 0, 0);

				__unpin(channelPtr);
				__unpin(maskPtr);
			});
		demo({ ctx, canvas });
	};
	img.src = 'skid.jpg';
}


function demo({ ctx, canvas }) {
	// const { width, height } = canvas;
	// let img_u8;
	// for (let channel = 0; channel < 3; channel++) {
	// 	img_u8 = new Uint8Array(width * height);
	// 	for (let n = 0; n < imgData.data.length; n+=4) {
	// 		img_u8[n / 4] = imgData.data[n + channel];
	// 	}
	// 	InpaintTelea(width, height, img_u8, mask_u8);
	// 	for (let i = 0; i < img_u8.length; i++) {
	// 		imgData.data[4 * i + channel] = img_u8[i];
	// 	}
	// }

	// // render result back to canvas
	// for (let i = 0; i < img_u8.length; i++) {
	// 	imgData.data[4 * i + 3] = 255;
	// }
	// ctx.putImageData(imgData, 0, 0);
}
