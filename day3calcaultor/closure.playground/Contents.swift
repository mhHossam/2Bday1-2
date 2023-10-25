import UIKit
var myArr: [Int] = [1, 2, 3, 4, 5, 6]

func filter(num: [Int], closure: (Int) -> Bool) -> [Int] {
    var filteredArray: [Int] = []
    for i in num {
        if closure(i) {
            filteredArray.append(i)
        }
    }
    return filteredArray
}

func isEven(num: Int) -> Bool {
    return num % 2 == 0
}

filter(num: myArr, closure: isEven )

let evenNumbers = filter(num: myArr, closure: isEven)
print("Even numbers in the array: \(evenNumbers)")
