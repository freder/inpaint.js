@inline
function cmp<T>(a: T, b: T): T {
	return a - b;
}


export default class HeapQueue {
	length: i32;
	data_u: Array<f32>;
	data_i: Array<i32>;

	constructor() {
		this.length = 0;
		this.data_u = new Array<f32>();
		this.data_i = new Array<i32>();
	}

	@inline
	peek(): i32 {
		return unchecked(this.data[0]);
	}

	push(val_u: f32, val_i: i32): void {
		this.data_u.push(val_u);
		this.data_i.push(val_i);

		let pos = this.data_u.length - 1;
		while (pos > 0) {
			const parent = (pos - 1) >>> 1;
			if (cmp(unchecked(this.data_u[pos]), unchecked(this.data_u[parent])) < 0) {
				this.swap(parent, pos);
				pos = parent;
			} else {
				break;
			}
		}
		this.length++;
		// return ++this.length;
	}

	pop(): i32 {
		const ret = unchecked(this.data_i)[0];
		const last_val_u = this.data_u.pop();
		const last_val_i = this.data_i.pop();
		this.length--;

		if (this.data_u.length > 0) {
			this.data_u[0] = last_val_u;
			this.data_i[0] = last_val_i;

			let pos: i32 = 0;
			const last = this.data_u.length - 1;
			while (true) {
				const left = (pos << 1) + 1;
				const right = left + 1;
				let minIndex = pos;
				if (
					left <= last &&
					cmp(unchecked(this.data_u[left]), unchecked(this.data_u[minIndex])) < 0
				) {
					minIndex = left;
				}
				if (
					right <= last &&
					cmp(unchecked(this.data_u[right]), unchecked(this.data_u[minIndex])) < 0
				) {
					minIndex = right;
				}
				if (minIndex !== pos) {
					this.swap(minIndex, pos);
					pos = minIndex;
				} else {
					break;
				}
			}
		}

		return ret;
	}

	swap(i1: i32, i2: i32): void {
		const tmp_u = unchecked(this.data_u[i1]);
		const tmp_i = unchecked(this.data_i[i1]);

		this.data_u[i1] = unchecked(this.data_u[i2]);
		this.data_i[i1] = unchecked(this.data_i[i2]);

		this.data_u[i2] = tmp_u;
		this.data_i[i2] = tmp_i;
	}
}
