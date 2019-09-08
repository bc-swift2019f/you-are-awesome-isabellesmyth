import UIKit

func averageTwoNumbers(_ number1: Double, _ number2: Double) -> Double {
    return (number1 + number2) / 2
}


print(averageTwoNumbers(75.5, 95))

func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Prince")
sayHello(to: "my little friend")


func swapNumbers(first: inout Int, second: inout Int) {
    let temp = second
    second = first
    first = temp
}

var a = 123
var b = 987
print(a, b)
swapNumbers(first: &a, second: &b)
print(a, b)

