import UIKit

let quiz1 = 85
let quiz2 = 86
let quiz3 = 87
let quiz4 = 90
func averageTwoQuizzes(){
    let average = Double(quiz1 + quiz2) / 2
    print("the average of quiz1 and quiz2 = \(average)")
}

averageTwoQuizzes()
print("")

func averageTheseTwoQuizzes(quiz1: Int, quiz2: Int) {
    let average = Double(quiz1 + quiz2) / 2
    print("the average of quiz1 and quiz2 = \(average)")
}

averageTheseTwoQuizzes(quiz1: quiz1, quiz2: quiz2)
averageTheseTwoQuizzes(quiz1: quiz3, quiz2: quiz4)
averageTheseTwoQuizzes(quiz1: 79, quiz2: 94)
averageTheseTwoQuizzes(quiz1: quiz1 + 5, quiz2: quiz2 + 3)
print("")

func returnTwoNumberAverage(num1: Double, num2: Double) -> Double {
    return (num1 + num2) / 2
}

let studentAvg = returnTwoNumberAverage(num1: 80.1, num2: 72.5)
print(studentAvg)

var firstQuiz = 92.0
var secondQuiz: Double = 87

print(returnTwoNumberAverage(num1: firstQuiz, num2: secondQuiz))
