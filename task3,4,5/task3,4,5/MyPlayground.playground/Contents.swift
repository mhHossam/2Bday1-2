import UIKit

func introduction(name: String, home: String, age: Int) {
    print("\"\(name)\", \"\(age)\", is from \(home)")
}
var name = "Mary"
let home = "California"
let age = 32

introduction(name: name, home: home, age: age)


func checkNumber(number: Int) {
    if number % 2 == 0 {
        print("It's an even number.")
    } else {
        print("It's an odd number.")
    }
}

checkNumber(number: 17)
checkNumber(number: 10)


func calculateGrade(studentGrade: Int, totalGrade: Int) -> String {
    let percent = Double(studentGrade) / Double(totalGrade) * 100
        switch percent {
    case 85...100:
        return "Excellent"
    case 75..<85:
        return "Very good"
    case 65..<75:
        return "Good"
    case 55..<65:
        return "Pass"
    default:
        return "Fail"
    }
}
let studentGrade = 92
let totalGrade = 100
let result = calculateGrade(studentGrade: studentGrade, totalGrade: totalGrade)
print("The student's result is: \(result)")
