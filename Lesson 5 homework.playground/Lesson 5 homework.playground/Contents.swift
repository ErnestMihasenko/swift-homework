import UIKit

var citiesData = ["Minsk": ("Capital of Belarus", "Europe"), "Abu-Dhabi": ("Capital of UAE", "Africa"), "Gotham": ("Doesn't exist", "America")]

citiesData["Stambul"] = ("Capital of Turkey", "Europe")
citiesData["Gotham"] = ("Batmans city", "America")
citiesData["Minsk"] = ("Population: 1.8 million", "Europe")
citiesData.removeValue(forKey: "Abu-Dhabi")

var longNamesCities = citiesData

for (key, _) in longNamesCities {
    if key.count <= 6 {
        longNamesCities.removeValue(forKey: key)
    }
}
print(longNamesCities)

var citiesFacts = [String]()

for (key, value) in citiesData {
    citiesFacts.append("\(key): \(value.0)")
}

let sortedCities = citiesFacts.sorted { $0.count > $1.count }
print(sortedCities)

// Упущенное задание
let someArray = [8, 4, 1, 2, 3, 4, 5, 6, 7]

let uniqueNumbersArray = Array(Set(someArray))

func checkDuplicates() {
    if uniqueNumbersArray.sorted(by: < ) == someArray.sorted(by: < ) {
        print("В массиве нет дубликатов")
    }
        else  {
            print("В массиве есть дубликаты")
    }
    }
print(checkDuplicates())
