import UIKit
// Функции умножения
func multiplication(firstMultiplier: Double, secondMultiplier: Double) -> Double {
    return firstMultiplier * secondMultiplier
}
func multiplication(firstMultiplier: Int, secondMultiplier: Int) -> Int {
    return firstMultiplier * secondMultiplier
}

print(multiplication(firstMultiplier: 2, secondMultiplier: 4))
print(multiplication(firstMultiplier: 4.5, secondMultiplier: 0.5))

// функции деления
func division(divident: Double, divider: Double) -> Double {
    return divident / divider
}
func division(divident: Int, divider: Int) -> Int {
    return divident / divider
}

print(division(divident: 12, divider: 12))
print(division(divident: 24.8, divider: 12.4))
 
// функции сложения
func addition(_ firstTerm: Int, _ secondTerm: Int) -> Int{
    return firstTerm + secondTerm
}
func addition(_ firstTerm: Float, _ secondTerm: Float) -> Float{
    return firstTerm + secondTerm
}

print(addition(1,2))
print(addition(2.2,2))

// функции вычитания
func substraction(_ minuend: Int, _ subtrahend: Int) -> Int{
    return minuend - subtrahend
}
func substraction(_ minuend: Double, _ subtrahend: Double) -> Double{
    return minuend - subtrahend
}


print(substraction(10, 5))
print(substraction(20.1, 20.9))

// Сумма цифр числа (решение найдено в интернете, понято, но хотелось бы также подробного разбора на занятии с проговариванием того, что и почему происходит с числом)
func digitSum(_ n : Int) -> Int {
    var n = n
    var sum = 0
    while n > 0 {
        sum += n % 10
        n /= 10
    }
    return sum
}

print(digitSum(1874))

//функция сравнения строк
func stringComparison(firstString: String, secondString: String) -> String {
    if firstString == secondString{
        return "Строки одинаковы"
    } else {
        return "Строки отличаются"
    }
}

print(stringComparison(firstString: "одинаковая строка", secondString: "одинаковая строка"))
print(stringComparison(firstString: "разные строки", secondString: "другая разная строка"))

//функция возведения в степень
func powNumber(number: Int, factor: Int = 4) -> Int {
    Int(pow(Double(number), Double(factor)))
}

print(powNumber(number: 2))


//функция вычисления факториала числа (рекурсия)
func factorial(factorialNumber: Int) -> Int {
    if factorialNumber == 0 {
        return 1
    } else {
        return factorialNumber * factorial(factorialNumber: factorialNumber - 1)
    }
}
let factorialResult = factorial(factorialNumber:20)

print(factorialResult)

//циклическая функция - ломаем приложение
func cycle(number: Int = 2) {
    repeat {
        number + 1
    } while number > 1
}

print(cycle(number: 2))
