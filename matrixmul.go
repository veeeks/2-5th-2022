// cerner_2tothe5th_2022
package main

import "fmt"

type matrix [][]int

func main() {
	mat1 := matrix{
		[]int{2, 3, 6}, []int{1, 4, 8}, []int{2, 1, 9},
	}
	mat2 := matrix{
		[]int{3, 1, 2}, []int{2, 4, 2}, []int{2, 4, 2},
	}
	var multiplicationnmat [3][3]int
	var total int
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			total = 0
			for k := 0; k < 3; k++ {
				total = total + mat1[i][k]*mat2[k][j]
			}
			multiplicationnmat[i][j] = total
		}
	}
	for i := 0; i < 3; i++ {
		for j := 0; j < 3; j++ {
			fmt.Printf("%d ", multiplicationnmat[i][j])
		}
		fmt.Printf("\n")
	}
}
