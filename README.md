# 원티드 프리온보딩 챌린지 iOS과정 사전과제


## **프로젝트 이름**

- MyCreditManager

## 사용 언어 / 환경

- Swift
- Xcode 기본 템플릿 중 [macOS - Command Line Tool]

## **프로그램의 메뉴**

- 학생추가
- 학생삭제
- 성적추가(변경)
- 성적삭제
- 평점보기
- 종료

## **프로그램 동작조건**

- 사용자가 종료 메뉴를 선택하기 전까지는 계속해서 사용자의 입력을 받습니다
- 메뉴선택을 포함한 모든 입력은 숫자 또는 영문으로 받습니다

## 성적별 점수

- A+ (4.5점) / A (4점)
- B+ (3.5점) / B (3점)
- C+ (2.5점) / C (2점)
- D+ (1.5점) / D (1점)
- F (0점)

## 평점

- 각 과목의 점수 총 합 / 과목 수
- 최대 소수점 2번째 자리까지 출력
    - 예)
        - 3.75
        - 4.1
        - 2

## **프로그램 동작모습**

`예시 화면의 굵은 글씨는 콘솔 출력 내용이며, 얇은 글씨는 콘솔을 통한 입력 내용입니다.`

### **메뉴의 잘못된 입력 처리**

![wrong_input](https://github.com/b1ctory/MyCreditManager/blob/master/image/wrong_menu_input.png?raw=true)

### **학생추가**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 이미 존재하는 학생은 다시 추가하지 않습니다

![add_student](https://github.com/b1ctory/MyCreditManager/blob/master/image/add_student.png?raw=true)

### **학생 삭제**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 없는 학생은 삭제하지 않습니다

![delete_student](https://github.com/b1ctory/MyCreditManager/blob/master/image/delete_student.png?raw=true)


### **성적추가**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 없는 학생의 성적은 추가하지 않습니다

![add_score](https://github.com/b1ctory/MyCreditManager/blob/master/image/add_score.png?raw=true)

![add_score_2](https://github.com/b1ctory/MyCreditManager/blob/master/image/add_score2.png?raw=true)

### **성적삭제**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 없는 학생의 성적은 삭제하지 않습니다

![delete_score](https://github.com/b1ctory/MyCreditManager/blob/master/image/delete_score.png?raw=true)

### **평점보기**

- 메뉴를 선택한 후에도 잘못 입력한 것이 있으면 처리해 주어야합니다
- 해당 학생의 과목과 성적을 모두 출력한 후 마지막 줄에 평점을 출력합니다
- 없는 학생은 평점을 보여주지 않습니다

![show_grade](https://github.com/b1ctory/MyCreditManager/blob/master/image/show_grade.png?raw=true)

### **종료**

- 프로그램을 종료합니다

![exit_program](https://github.com/b1ctory/MyCreditManager/blob/master/image/exit_program.png?raw=true)
