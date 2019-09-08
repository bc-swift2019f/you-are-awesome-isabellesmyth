import UIKit

var isOn = true
if isOn == true {
    print("oh, it's on")
} else {
    print("...all bets are off...")
}

if isOn {
    print("oh, it's on")
} else {
    print("...all bets are off...")
}


if isOn != false {
    print("oh, it's on")
} else {
    print("...all bets are off...")
}
print("")

isOn = false
if isOn == false {
    print("...all bets are off...")
} else {
     print("oh, it's on")
}

if isOn != true {
    print("...all bets are off...")
} else {
    print("oh, it's on")
}

if !isOn {
    print(isOn)
    print("...all bets are off...")
 
} else {
    print("oh, it's on")
}
