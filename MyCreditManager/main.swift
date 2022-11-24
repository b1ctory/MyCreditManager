//
//  main.swift
//  MyCreditManager
//
//  Created by BankBe on 2022/11/23.
//

import Foundation

var studentList: [Student] = []

func startManager() {
    print(Constants.Message.startMessage)
    print(Constants.Message.selectMessage)
    
    let menuPickInput = readLine()
    
    switch menuPickInput {
    case "1":
        addStudent()
    case "2":
        deleteStudent()
    case "3":
        addOrEditScore()
    case "4":
        deleteScore()
    case "5":
        printGrade()
    case "X":
        exitProgram()
    default:
        print(Constants.ErrorMessage.selectInputErrorMessage)
        if menuPickInput != nil {
            startManager()
        }
    }
}

func addStudent() {
    print(Constants.Message.addStudentNameInputMessage)
    
    if let name = readLine() {
        if name.trimmingCharacters(in: .whitespaces).count > 0 {
            if studentList.contains(where: { $0.name == name }) {
                print(name + " " + Constants.ErrorMessage.studentAlreadyExistMessage)
            } else {
                studentList.append(Student(name: name, score: nil))
                print(name + Constants.SuccessMessage.addStudentNameSuccessMessage)
            }
        } else {
            print(Constants.ErrorMessage.inputErrorMessage)
        }
    }
    
    startManager()
}

func deleteStudent() {
    print(Constants.Message.deleteStudentNameInputMessage)
    
    if let name = readLine() {
        if name.trimmingCharacters(in: .whitespaces).count > 0 {
            if studentList.contains(where: { $0.name == name }) {
                studentList = studentList.filter {
                    $0.name != name
                }
                print(name + " " + Constants.SuccessMessage.deleteStudentNameSuccessMessage)
            } else {
                print(name + Constants.ErrorMessage.studentNotFoundMessage)
            }
        } else {
            print(Constants.ErrorMessage.inputErrorMessage)
        }
        print(studentList)
    }
    
    startManager()
}

func addOrEditScore() {
    print(Constants.Message.addScoreInputMessage)
    
    if let student = readLine() {
        if student.count > 0 && student.split(separator: " ").count == 3 {
            var splitedStudentInput = student.split(separator: " ")
            let name = splitedStudentInput[0]
            let subject = splitedStudentInput[1]
            let score = splitedStudentInput[2]
        } else {
            print(Constants.ErrorMessage.inputErrorMessage)
        }
        
    }
    
    startManager()
}

func deleteScore() {
    print(Constants.Message.deleteScoreMessage)
    startManager()
}

func printGrade() {
    print(Constants.Message.getGradeMessage)
    startManager()
}

func exitProgram() {
    print(Constants.Message.programExitMessage)
    exit(0)
}

startManager()
