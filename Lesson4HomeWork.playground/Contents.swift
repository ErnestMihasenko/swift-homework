import UIKit

var arrayNumbers: [Int] = [-1, 2, 6, 12, 0, 5, 7, 8]

for elements in 0...arrayNumbers.count - 1 {
    let powNumbers = Int(pow(Double(arrayNumbers[elements]), Double(2)))
    print(powNumbers)
}
// Вопрос по этому пункту. Как мы можем использовать данные массива powNumbers, если, например, потребуется вызвать их в другой функции?

for evenNumbers in arrayNumbers {
    if evenNumbers % 2 == 0 {
        print(evenNumbers)
    }
}

let evenNumbers = arrayNumbers.filter { $0.isMultiple(of: 2) }
print(evenNumbers)

let sortedNumbers = arrayNumbers.sorted(by: <)
print(sortedNumbers)
