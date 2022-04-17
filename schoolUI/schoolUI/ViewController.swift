//
//  ViewController.swift
//  Lesson 7 homework
//
//  Created by Ernest Mihasenko on 22.03.22.
//

import UIKit

class ViewController: UIViewController {
    var studentsArray = [Student]()
 
    @IBOutlet weak var studentSurnameTextField: UITextField!
    @IBOutlet weak var studentNameTextField: UITextField!
    @IBOutlet weak var addStudentButton: UIButton!
    @IBOutlet weak var studentGradeTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    


    
    @IBAction func addStudent(_ sender: Any) {
        let school = School(students: studentsArray)
        let student = Student(name: studentNameTextField.text ?? "Имя не введено", surname: studentSurnameTextField.text ?? "Фамилия не введена", grade: studentGradeTextField.text ?? "Класс не введен")
        studentsArray.append(student)
        
        school.printInfo()
    }
}


import UIKit
import Foundation

class School {
    var students: [Student]
    
    init(students: [Student]) {
        self.students = students
    }
    func printInfo() {
        for info in students {
            info.printInfo()
        }
    }
}



class Student {
    let name: String
    let surname: String
    let grade: String
    
    init(name: String = "name",
         surname: String = "name",
        grade: String)
    {
        self.name = name
        self.surname = surname
       self.grade = grade
        }
    func printInfo() {
        let info = "Имя: \(name)\n" + "Фамилия: \(surname)\n" + "\(grade) класс"
        print(info)
        
    }
}


