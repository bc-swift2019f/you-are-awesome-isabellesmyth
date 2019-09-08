import UIKit

for increment in 1...5{
    print(increment)
}
print("")
var quizzes = [72,81,89,95,92,100,100]
var sum = 0
//for index in 0...quizzes.count-1{
//for index in 0..<quizzes.count{
//    print("index = \(index), quizzes[index] = \(quizzes[index])")
//    sum = sum + quizzes[index]
//}
//print("sum = \(sum)")

for quiz in quizzes {
    print("quiz = \(quiz)")
    sum = sum + quiz
}
print("sum = \(sum)")
print("")

for countByFours in stride (from: 0, through: 100, by: 4) {
    print(countByFours)
}
print("")

for countByFours in stride (from: 0, to: 100, by: 4) {
    print(countByFours)
}
print("")


for countByFours in stride (from: 1, to: 100, by: 4) {
    print(countByFours)
}
print("")

for myBank in stride (from: 100, to: 0, by: -20) {
    print("\(myBank/20) Tubmans = $\(myBank)")
}

print("")

for countdown in stride (from: 10, through: 1, by: -1) {
    print(countdown)
}
print("blastoff")

print("")

for countdown in (0...10).reversed() {
    print(countdown)
}
print("blastoff")

//ERROR below
//for countdown in 10...0 {
//    print(countdown)
//}
//print("blastoff")
//


var howMuchLiked = 5
var likePhrase = ""

if howMuchLiked <= 0 {
    likePhrase = " don't"
}else {
    for _ in 1...howMuchLiked {
        likePhrase += " really"
    }
}

print("I \(likePhrase) like swift")

