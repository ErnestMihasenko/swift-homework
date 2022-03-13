import UIKit

let firstTupple: (Int, String) = (0, "zero")
let secondTupple = (2, "two")
let thirdTupple = (3, "three")
let fourthTupple = (4, "four")
let fifthTupple = (5, "five")
let sixthTupple = (6, "six")
let seventhTupple = (7, "seven")
let eigthsTupple = (8, "eigth")

var arrayTupples = [firstTupple, secondTupple, thirdTupple, fourthTupple, fifthTupple, sixthTupple, seventhTupple, eigthsTupple]
var powArrayTupples = arrayTupples

for elements in 0..<powArrayTupples.count {
    let powNumbersArray = [(Int(pow(Double(powArrayTupples[elements].0), 2)), powArrayTupples[elements].1)] as [Any]
    print(powNumbersArray)
}

var evenArrayTupples = arrayTupples
var evenNumberArray = [Int]()
for evenNumbers in 0..<evenArrayTupples.count {
    if evenArrayTupples[evenNumbers].0 % 2 == 0 {
        evenNumberArray += [evenArrayTupples[evenNumbers].0]
    }
}
print(evenNumberArray)


let sortedNumbers = arrayTupples.sorted(by: <)
print(sortedNumbers)
