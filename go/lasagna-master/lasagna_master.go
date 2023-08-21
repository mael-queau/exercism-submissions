package lasagna

func PreparationTime(layers []string, duration int) int {
	if duration == 0 {
		duration = 2
	}

	return len(layers) * duration
}

func Quantities(layers []string) (noodles int, sauce float64) {
	for _, layer := range layers {
		if layer == "noodles" {
			noodles += 50
		} else if layer == "sauce" {
			sauce += .2
		}
	}

	return
}

// AddSecretIngredient takes a list of ingredients and adds the last ingredient from friendsList to myList, removing "?" from myList in the process.
func AddSecretIngredient(friendsList []string, myList []string) {
	last := friendsList[len(friendsList)-1]
	for i := range myList {
		if myList[i] == "?" {
			myList[i] = last
		}
	}
}

// ScaleRecipe scales a recipe from the given quantities to the desired portions. (this function doesn't alter the original recipe)
func ScaleRecipe(quantities []float64, portions int) []float64 {
	scaled := make([]float64, len(quantities))
	for i, quantity := range quantities {
		scaled[i] = quantity * float64(portions) / 2
	}

	return scaled
}

// Your first steps could be to read through the tasks, and create
// these functions with their correct parameter lists and return types.
// The function body only needs to contain `panic("")`.
//
// This will make the tests compile, but they will fail.
// You can then implement the function logic one by one and see
// an increasing number of tests passing as you implement more
// functionality.
