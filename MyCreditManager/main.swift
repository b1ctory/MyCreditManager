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
    case "6":
        printStudentList()
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
    let name = readLine() ?? ""
    
    if name.trimmingCharacters(in: .whitespaces).count > 0 {
        let trimmedName = name.replacingOccurrences(of: " ", with: "")
        if studentList.contains(where: { $0.name == trimmedName }) {
            print(trimmedName + " " + Constants.ErrorMessage.studentAlreadyExistMessage)
        } else {
            studentList.append(Student(name: trimmedName, score: [:]))
            print(trimmedName + Constants.SuccessMessage.addStudentNameSuccessMessage)
        }
    } else {
        print(Constants.ErrorMessage.inputErrorMessage)
    }
    startManager()
}

func deleteStudent() {
    print(Constants.Message.deleteStudentNameInputMessage)
    
    let name = readLine() ?? ""
    
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
    
    startManager()
}

func addOrEditScore() {
    print(Constants.Message.addScoreInputMessage)
    
    let studentScoreInput = readLine() ?? ""
    
    if studentScoreInput.count > 0 && studentScoreInput.split(separator: " ").count == 3 {
        let splitedStudentInput = studentScoreInput.split(separator: " ")
        let name = String(splitedStudentInput[0])
        let subject = String(splitedStudentInput[1])
        let score = String(splitedStudentInput[2])
        
        if let idx = studentList.firstIndex(where: { $0.name == name }) {
            var scoreDic = studentList[idx].score
            scoreDic[subject] = score
            studentList[idx] = Student(name: name, score: scoreDic)
            print("\(name) 학생의 \(subject) 과목이 \(score)로 " + Constants.SuccessMessage.addScoreSuccessMessage)
        } else {
            print(name + Constants.ErrorMessage.studentNotFoundMessage)
        }
        
    } else {
        print(Constants.ErrorMessage.inputErrorMessage)
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

/// 임시 메소드 -> 리스트 파악용
func printStudentList() {
    print(studentList)
    startManager()
    
}

func exitProgram() {
    print(Constants.Message.programExitMessage)
    exit(0)
}

startManager()
