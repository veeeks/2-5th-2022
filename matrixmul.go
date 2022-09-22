//cerner_2tothe5th_2022
package main

import "fmt"

type matrix [][]int

func main() {

	mat1 := matrix{
		[]int{2, 3},
		[]int{1, 4},
		[]int{2, 1},
	}
	mat2 := matrix{
		[]int{3, 1, 2},
		[]int{2, 4, 2},
	}
	var multiplicationnmat [2][2]int

	fmt.Println("The Go Result of Matrix Multiplication = ")
	for i, row := range multiplicationnmat {
		for j := range row {
			multiplicationnmat[i][j] = mat1[i][j] * mat2[i][j]
			fmt.Print(multiplicationnmat[i][j], "\t")
		}
		fmt.Println()
	}
}
