import UIKit

class School {
    var students = [Student]()
    
    init(students: [Student] = [firstStudent, secondStudent, thirdStudent, fourthStudent]) {
        self.students = students
    }
    func printInfo() {
        let info = students
        print(info)
    }
}

// let school = School()
// I can't create a variable with the value of the School class. Always see error: Execution was interrupted, reason: signal SIGABRT. The process has been left at the point where it was interrupted, use "thread return -x" to return to the state before expression evaluation.
// I tried in different ways, nothing works. But it works in project.

class Student {
    let name: String
    let surname: String
    let marks: [String: Int]
    let grade: Int
    
    init(name: String,
         surname: String,
         marks: [String: Int] = ["Нет оценок": 0],
         grade: Int = 0) {
        self.name = name
        self.surname = surname
        self.marks = marks
        self.grade = grade
    }
    func printInfo() {
        let info = "Имя: \(name)\n" + "Фамилия: \(surname)\n" + "(\(grade) класс)\n" + "\(marks)"
        
        print(info)
    }
}

let firstStudent = Student(name: "Павлик", surname: "Волков", marks: ["Математика": 3], grade: 5)
let secondStudent = Student(name: "Маша", surname: "Волкова", marks: ["Математика": 3], grade: 5)
let thirdStudent = Student(name: "Антон", surname: "Липень", grade: 5)
let fourthStudent = Student(name: "Алена", surname: "Воронина", marks: ["Английский": 9, "Русский": 7, "Физика": 4], grade: 8)
