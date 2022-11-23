//
//  main.swift
//  MyCreditManager
//
//  Created by BankBe on 2022/11/23.
//

import Foundation

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
    
    startManager()
}

func deleteStudent() {
    print(Constants.Message.deleteStudentNameInputMessage)
    startManager()
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
