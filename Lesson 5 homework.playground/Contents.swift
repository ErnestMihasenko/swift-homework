import UIKit

var dictionary = ["Minsk": ("Capital of Belarus", "Europe"), "Abu-Dhabi": ("Capital of UAE", "Africa"), "Gotham": ("Doesn't exist", "America")]

dictionary["Stambul"] = ("Capital of Turkey", "Europe")
dictionary["Gotham"] = ("Batmans city", "America")
dictionary["Minsk"] = ("Population: 1.8 million", "Europe")
dictionary.removeValue(forKey: "Abu-Dhabi")

var newDictionary = dictionary

for (key, _) in newDictionary {
    if key.count <= 6 {
        newDictionary.removeValue(forKey: key)
    }
}
print(newDictionary)

var arrayCities = [String]()

for (key, value) in dictionary {
    arrayCities.append("\(key): \(value.0)")
}

let sortedArray = arrayCities.sorted { $0.count > $1.count }
print(sortedArray)
