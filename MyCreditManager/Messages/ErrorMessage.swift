//
//  ErrorMessage.swift
//  MyCreditManager
//
//  Created by exception on 2022/12/10.
//

import Foundation

enum ErrorMessage: String {
    case selectInputErrorMessage = "뭔가 입력이 잘못되었습니다. 1~5 사이의 숫자 혹은 X를 입력해주세요."
    case inputErrorMessage = "입력이 잘못되었습니다. 다시 확인해주세요."
    case studentAlreadyExistMessage = "은(는) 이미 존재하는 학생입니다. 추가하지 않습니다."
    case studentNotFoundMessage = "학생을 찾지 못했습니다."
}
