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
        if name.count > 0 {
            if checkDuplicateName(name: name) {
                studentList.append(Student(name: name, score: nil, grade: nil))
                print(name + Constants.SuccessMessage.addStudentNameSuccessMessage)
            } else {
                print(Constants.ErrorMessage.studentAlreadyExistMessage)
            }
            
        } else {
            print(Constants.ErrorMessage.inputErrorMessage)
        }
    }
    
    startManager()
}

func checkDuplicateName(name: String) -> Bool {
    var nameList: [String] = []
    studentList.forEach {
        nameList.append($0.name)
    }
    
    return nameList.contains(name) ? false : true
}


func deleteStudent() {
    print(Constants.Message.deleteStudentNameInputMessage)
    
    if let name = readLine() {
        if name.count > 0 {
            if checkExistName(name: name) {
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
    }
    
    startManager()
}

func checkExistName(name: String) -> Bool {
    var nameList: [String] = []
    studentList.forEach {
        nameList.append($0.name)
    }
    
    return nameList.contains(name) ? true : false
}

func addOrEditScore() {
    print(Constants.Message.addScoreInputMessage)
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
