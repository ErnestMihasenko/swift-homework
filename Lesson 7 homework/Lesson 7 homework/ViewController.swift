//
//  ViewController.swift
//  Lesson 7 homework
//
//  Created by Ernest Mihasenko on 22.03.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        school.printInfo()
    }
}

import UIKit
import Foundation

class School {
    var students = [Student]()
    
    init(students: [Student] = [firstStudent, secondStudent, thirdStudent, fourthStudent]) {
        self.students = students
    }
    func printInfo() {
        for info in students {
            info.printInfo()
        }
    }
}

let school = School()

class Student {
    let name: String
    let surname: String
    let marks: [String: Int]
    let grade: Int
    
    init(name: String = "name",
         surname: String = "name",
         marks: [String: Int] = [:],
         grade: Int = 1) {
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
let thirdStudent = Student(name: "Антон", surname: "Липень", marks: ["Английский": 5, "Русский": 5, "Физика": 5], grade: 5)
let fourthStudent = Student(name: "Алена", surname: "Воронина", marks: ["Английский": 9, "Русский": 7, "Физика": 4], grade: 8)
