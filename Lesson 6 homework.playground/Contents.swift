// 1

let numbersArray = [0, 1, 2, 3, 4, 5, 6, 7, 8]

var evenNumbersArray = [Int]()
var oddNumbersArray = [Int]()

for number in numbersArray {
    if number % 2 == 0 {
        evenNumbersArray.append(number)
    }
    else {
        oddNumbersArray.append(number)
    }
}

print(evenNumbersArray)
print(oddNumbersArray)

// 2

let optionalStringArray: [String?] = ["шарф", "перчатка", "шапка", nil]
var countLetters = [String.Element: Int]()

for word in optionalStringArray {
    if let word = word {
        for char in word {
            countLetters[char, default: 0] += 1
        }
    }
}
print(countLetters)

// 3

func sum (firstTerm: Int?, secondTerm: Int?) -> Int {
    if let firstTerm = firstTerm,
       let secondTerm = secondTerm {
        return firstTerm + secondTerm
    }
return 0}

print (sum(firstTerm: -1, secondTerm: 12))

func multiplication(firstMultiplier: Double?, secondMultiplier: Double?) -> Double {
    guard let firstMultiplier = firstMultiplier,
          let secondMultiplier = secondMultiplier else {return 0}
    return firstMultiplier * secondMultiplier
}

print(multiplication(firstMultiplier: 4, secondMultiplier: 5))
 
func division(divident: Int?, divider: Int?) -> Int {
    let divident = divident ?? 0,
        divider = divider ?? 0
    return divident / divider
}

print(division(divident: 10, divider: -2))


func substraction(_ minuend: Int?, _ subtrahend: Int?) -> Int{
    guard let minuend = minuend,
          let subtrahend = subtrahend else {return 0}
    return minuend - subtrahend
}

print(substraction(74, 100))
