// Package weather provides weather forecast information.
package weather

// CurrentCondition is the current weather condition.
var CurrentCondition string
// CurrentLocation is the current location.
var CurrentLocation string

// Forecast returns the weather forecast for a given city.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
