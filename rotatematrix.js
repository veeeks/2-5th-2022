//cerner_2tothe5th_2022
const rotateMatrix90 = source => {

	const M = source.length;
	const N = source[0].length;

	let destination = new Array(N);
	for (let i = 0; i < N; i++) {
		destination[i] = new Array(M);
	}
	for (let i = 0; i < N; i++) {
		for (let j = 0; j < M; j++) {
			destination[i][j] = source[M - j - 1][i];
		}
	}
	return destination;
};

let matrix = [
	[1, 2, 3],
	[4, 5, 6],
	[7, 8, 9],
];
console.log(rotateMatrix90(matrix));   // Result = 
//[[7,4,1]
//,[8,5,2]
//,[9,6,3]]
