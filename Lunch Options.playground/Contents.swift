import UIKit

var hasPeanutAllergy = false
var hasGlutenAllergy = false
var eatsBeef = false
var lunchChoice = ""

if eatsBeef && !hasGlutenAllergy {
    lunchChoice = " Roast Beef Sandwich"
} else if hasGlutenAllergy || hasPeanutAllergy {
    lunchChoice = "Garden salad"
} else {
    lunchChoice = "pb and j sandwich "
}

print(lunchChoice)

