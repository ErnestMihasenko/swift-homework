//
//  ContentView.swift
//  Lesson31HomeWork
//
//  Created by Ernest Mihasenko on 26.06.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        studentsInfoTextFields
    }
    
    @State var studentList = [Student]()
    
    @State var name = ""
    @State var surname = ""
    @State var grade = ""
    
    var studentsInfoTextFields: some View {
        Group {
            Text("Name:")
            
            TextField("Name", text: $name)
                .background(Color.yellow)
            
            Text("Surname:")
            
            TextField("Surname:", text: $surname)
                .background(Color.yellow)
            
            Text("Grade:")
            
            TextField("Grade:", text: $grade)
                .background(Color.yellow)
            
            Button("Submit") {
                addStudent()
                print("-------------------")
                
            }
        }
        .padding(60)
    }
    
    func addStudent() {
        if name.isEmpty == false,
           surname.isEmpty == false,
           grade.isEmpty == false {
            let newStudent = Student(name: name, surname: surname, grade: grade)
            studentList.append(newStudent)
            
            for student in studentList {
                print(student.printInfo())
                
                name = ""
                surname = ""
                grade = ""
            }
        }
    }
    
}

struct Student {
    let name: String
    let surname: String
    let grade: String
    
    init(name: String,
         surname: String,
         grade: String) {
        self.name = name
        self.surname = surname
        self.grade = grade
    }
    
    func printInfo() {
        let info = "Имя: \(name)\n" + "Фамилия: \(surname)\n" + "\(grade) класс"
        print(info)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
