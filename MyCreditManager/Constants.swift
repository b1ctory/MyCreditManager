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
    
}
