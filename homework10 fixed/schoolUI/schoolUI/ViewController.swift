//
//  ViewController.swift
//  Lesson 7 homework
//
//  Created by Ernest Mihasenko on 22.03.22.
//

import UIKit

class ViewController: UIViewController {
    let school = School(students: [])
 
    @IBOutlet weak var studentSurnameTextField: UITextField!
    
    @IBOutlet weak var studentNameTextField: UITextField!
    
    @IBOutlet weak var addStudentButton: UIButton!
    
    @IBOutlet weak var studentGradeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
        
    @IBAction func addStudent(_ sender: Any) {
//        let school = School(students: studentsArray)
//       let student = Student(name: studentNameTextField.text ?? "Имя не введено", surname: studentSurnameTextField.text ?? "Фамилия не введена", grade: studentGradeTextField.text ?? "Класс не введен")
//       studentsArray.append(student)
        
        guard let studentName = studentNameTextField.text else {
            return
        }
        guard let studentSurname = studentSurnameTextField.text else {
            return
        }
        guard let studentGrade = studentGradeTextField.text else { return
        }
        
        let student = Student(name: studentName, surname: studentSurname, grade: studentGrade)
        school.students.append(student)
        
        school.printInfo()
    }
}

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
