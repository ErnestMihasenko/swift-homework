import Darwin
let number1 = 2.5
let number2 = 9.7
let number3 = 6.9
let number4 = 8.2
let wholeNumber1 = Int(floor(number1))
let fractionalNumber1 = number1.truncatingRemainder(dividingBy: 1)
let wholeNumber2 = Int(floor(number2))
let fractionalNumber2 = number2.truncatingRemainder(dividingBy: 1)
let wholeNumber3 = Int(floor(number3))
let fractionalNumber3 = number3.truncatingRemainder(dividingBy: 1)
let wholeNumber4 = Int(floor(number4))
let fractionalNumber4 = number4.truncatingRemainder(dividingBy: 1)

let sumWholeNumbers = wholeNumber1 + wholeNumber2 + wholeNumber3 + wholeNumber4
let sumFractionalNumbers = fractionalNumber1 + fractionalNumber2 + fractionalNumber3 + fractionalNumber4

let checkParity1 = Int(wholeNumber1) % 2
let checkParity2 = Int(wholeNumber2) % 2
let checkParity3 = Int(wholeNumber3) % 2
let checkParity4 = Int(wholeNumber4) % 2

if checkParity1 == 0 {
    print("число \(wholeNumber1) четное")
}
else {
    print("число \(wholeNumber1) нечетное")
}

if checkParity2 == 0 {
    print("число \(wholeNumber2) четное")
}
else {
    print("число \(wholeNumber2) нечетное")
}

if checkParity3 == 0 {
    print("число \(wholeNumber3) четное")
}
else {
    print("число \(wholeNumber3) нечетное")
}

if checkParity4 == 0 {
    print("число \(wholeNumber4) четное")
}
else {
    print("число \(wholeNumber4) нечетное")
}
