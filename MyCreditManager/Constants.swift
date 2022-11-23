//
//  Constants.swift
//  MyCreditManager
//
//  Created by BankBe on 2022/11/23.
//

import Foundation

struct Constants {
    
    struct Message {
        static let startMessage = "원하는 기능을 입력해주세요."
        static let selectMessage = "1: 학생추가, 2: 학생삭제, 3: 성적추가 (변경), 4: 성적삭제, 5: 평점보기, X: 종료"
        static let addStudentNameInputMessage = "추가할 학생의 이름을 입력해주세요."
        static let deleteStudentNameInputMessage = "삭제할 학생의 이름을 입력해주세요."
        static let addScoreInputMessage = "성적을 추가할 학생의 이름, 과목 이름, 성적(A+, A, F 등)을 띄어쓰기로 구분하여 차례로 작성해주세요.\n 입력예) Mickey Swift A+\n 만약에 성적의 성적 중 해당 과목이 존재하면 기존 점수가 갱신됩니다."
        static let deleteScoreMessage = "성적을 삭제할 학생의 이름, 과목 이름을 띄어쓰기로 구분하여 차례로 작성해주세요.\n 입력예) Mickey Swift"
        static let getGradeMessage = "평점을 알고 싶은 학생의 이름을 입력해주세요."
        static let programExitMessage = "프로그램을 종료합니다..."
    }
    
    struct SuccessMessage {
        static let addStudentNameSuccessMessage = "학생을 추가했습니다."
        static let deleteStudentNameSuccessMessage = "학생을 삭제하였습니다."
        static let addScoreSuccessMessage = "추가(변경) 되었습니다."
        static let deleteScoreSuccessMessage = "과목의 성적이 삭제되었습니다."
    }
    
    struct ErrorMessage {
        static let selectInputErrorMessage = "뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요."
        static let inputErrorMessage = "입력이 잘못되었습니다. 다시 확인해주세요."
        static let studentAlreadyExistMessage = "은(는) 이미 존재하는 학생입니다. 추가하지 않습니다."
        static let studentNotFoundMessage = "학생을 찾지 못했습니다."
    }
    
}
