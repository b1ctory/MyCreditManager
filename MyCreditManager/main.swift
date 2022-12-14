//
//  main.swift
//  MyCreditManager
//
//  Created by BankBe on 2022/11/23.
//

import Foundation

var students: [Student] = []

func showMenu() {
    print(Message.startMessage)
    print(Message.selectMessage)
}

func recieveUserInput() -> String? {
    return readLine()
}

func startManager() {
    guard let menuInput: String = recieveUserInput() else {
        return
    }
    
    switch menuInput {
    case "1":
        addStudent()
    case "2":
        deleteStudent()
    case "3":
        addOrEditScore()
    case "4":
        deleteScore()
    case "5":
        showGrade()
    case "6":
        printStudentList()
    case "X":
        exitProgram()
    default:
        print(ErrorMessage.selectInputErrorMessage)
        startManager()
    }
}

func addStudent() {
    print(Message.addStudentNameInputMessage)
    let name = readLine() ?? ""
    
    if name.trimmingCharacters(in: .whitespaces).count > 0 {
        printAddStudentResult(name: name)
    } else {
        print(ErrorMessage.inputErrorMessage)
    }
    startManager()
}

func printAddStudentResult(name: String) {
    let trimmedName = name.replacingOccurrences(of: " ", with: "")
    if students.contains(where: { $0.name == trimmedName }) {
        print("\(trimmedName) \(ErrorMessage.studentAlreadyExistMessage)")
    } else {
        students.append(Student(name: trimmedName, scores: [:]))
        print("\(trimmedName)\(SuccessMessage.addStudentNameSuccessMessage)")
    }
}

func deleteStudent() {
    print(Message.deleteStudentNameInputMessage)
    
    let name = readLine() ?? ""
    
    if name.trimmingCharacters(in: .whitespaces).count > 0 {
        printDeleteStudentResult(name: name)
    } else {
        print(ErrorMessage.inputErrorMessage)
    }
    
    startManager()
}

func printDeleteStudentResult(name: String) {
    if students.contains(where: { $0.name == name }) {
        filterName(name: name)
        print("\(name) \(SuccessMessage.deleteStudentNameSuccessMessage)")
    } else {
        print("\(name) \(ErrorMessage.studentNotFoundMessage)")
    }
}

func filterName(name: String) {
    students = students.filter {
        $0.name != name
    }
}

func addOrEditScore() {
    print(Message.addScoreInputMessage)
    
    let studentScoreInput = readLine() ?? ""
    
    if studentScoreInput.count > 0 && studentScoreInput.split(separator: " ").count == 3 {
        let splitedStudentInput = studentScoreInput.split(separator: " ")
        let name = String(splitedStudentInput[0])
        let subject = String(splitedStudentInput[1])
        let score = String(splitedStudentInput[2])
        
        printAddOrEditScore(name: name, subject: subject, score: score)
        
    } else {
        print(ErrorMessage.inputErrorMessage)
    }
    
    startManager()
}

func printAddOrEditScore(name: String, subject: String, score: String) {
    if let idx = students.firstIndex(where: { $0.name == name }) {
        var scoreDic = students[idx].scores
        scoreDic[subject] = score
        students[idx] = Student(name: name, scores: scoreDic)
        print("\(name) ????????? \(subject) ????????? \(score)??? \(SuccessMessage.addScoreSuccessMessage)")
    } else {
        print("\(name) \(ErrorMessage.studentNotFoundMessage)")
    }
}

func deleteScore() {
    print(Message.deleteScoreMessage)
    
    let studentScoreInput = readLine() ?? ""
    
    if studentScoreInput.count > 0 && studentScoreInput.split(separator: " ").count == 2 {
        let splitedStudentInput = studentScoreInput.split(separator: " ")
        let name = String(splitedStudentInput[0])
        let subject = String(splitedStudentInput[1])
        
        printDeleteScore(name: name, subject: subject)
        
    } else {
        print(ErrorMessage.inputErrorMessage)
    }
    
    startManager()
}

func printDeleteScore(name: String, subject: String) {
    if let idx = students.firstIndex(where: { $0.name == name }) {
        var scoreDic = students[idx].scores
        scoreDic[subject] = nil
        students[idx] = Student(name: name, scores: scoreDic)
        print("\(name) ????????? \(subject) \(SuccessMessage.deleteScoreSuccessMessage)")
    } else {
        print("\(name) \(ErrorMessage.studentNotFoundMessage)")
    }
}

func showGrade() {
    print(Message.getGradeMessage)
    
    let name = readLine() ?? ""
    
    if name.trimmingCharacters(in: .whitespaces).count > 0 {
        let trimmedName = name.replacingOccurrences(of: " ", with: "")
        
        printGrade(trimmedName: trimmedName)
        
    } else {
        print(ErrorMessage.inputErrorMessage)
    }
    
    startManager()
}

func printGrade(trimmedName: String) {
    
    if students.contains(where: { $0.name == trimmedName }) {
        print("?????? : \(calculateGrade(name: trimmedName))")
    } else {
        print(ErrorMessage.studentNotFoundMessage)
    }
    
}

func calculateGrade(name: String) -> Double {
    var countSum = 0.0
    var subjectCount = 0.0
    
    if let idx = students.firstIndex(where: { $0.name == name }) {
        printStudentScores(student: students[idx])
        subjectCount = Double(students[idx].scores.count)
        countSum = getScoreSum(student: students[idx])
    } else {
        print("\(name) \(ErrorMessage.studentNotFoundMessage)")
    }
    
    return round((countSum / subjectCount) * 100) / 100
}

func printStudentScores(student: Student) {
    student.scores.forEach {
        print("\($0.key) : \($0.value)")
    }
}

func getScoreSum(student: Student) -> Double {
    var countSum = 0.0
    student.scores.forEach {
        countSum += scoreToFloat(score: $0.value)
    }
    return countSum
}

func scoreToFloat(score: String) -> Double {
    switch score {
    case "A+":
        return 4.5
    case "A":
        return 4.0
    case "B+":
        return 3.5
    case "B":
        return 3.0
    case "C+":
        return 2.5
    case"C":
        return 2.0
    case "D+":
        return 1.5
    case "D":
        return 1.0
    default:
        return 0.0
    }
}

/// ?????? ????????? -> ????????? ?????????
func printStudentList() {
    print(students)
    startManager()
    
}

func exitProgram() {
    print(Message.programExitMessage)
    exit(0)
}

startManager()
