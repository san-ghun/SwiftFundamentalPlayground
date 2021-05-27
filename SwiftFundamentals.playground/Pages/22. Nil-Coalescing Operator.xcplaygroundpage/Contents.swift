//: [Previous](@previous)

// subject: 22. Nil-Coalescing Operator (2단원 중 23)
// created by Sanghun Park on 2021/05/27.

import Foundation

var str = "Hello, playground"

// 예제 클래스
// 사람 클래스
class Person {
    var name: String
    var job: String?
    var home: Apartment?
    
    init(name: String) {
        self.name = name
    }
}
// 사람이 사는 집 클래스
class Apartment {
    var buildingNumber: String
    var roomNumber: String
    var `guard`: Person?
    var owner: Person?
    
    init(dong: String, ho: String) {
        buildingNumber = dong
        roomNumber = ho
    }
}

// 옵셔널 체이닝 사용
let yagom: Person? = Person(name: "yagom")
let apart: Apartment? = Apartment(dong: "101", ho: "202")
let superman: Person? = Person(name: "superman")



// 2. nil 병합 연산자
// - 중위 연산자입니다. ??
// - Optional ?? Value
// - 옵셔널 값이 nil일 경우, 우측의 값을 반환합니다.
// - 띄어쓰기에 주의하여야 합니다.

var guardJob: String
    
guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 경비원

yagom?.home?.guard?.job = nil

guardJob = yagom?.home?.guard?.job ?? "슈퍼맨"
print(guardJob) // 슈퍼맨

//: [Next](@next)
