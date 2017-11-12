package main

import (
	"fmt"
)

func main() {
	x := []float64{1, 2, 3, 4, 5}
	y := float64(4)
	result := ttest(x, y)
	fmt.Println(result)
}

func ttest(x []float64, y float64) float64 {
	var sum float64

	for _, value := range x {
		sum += value
	}

	mean_x := sum / float64(len(x))
	return mean_x
}
