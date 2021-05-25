//: [Previous](@previous)

// subject: 08. Loop statements (1단원 중 10)
// created by Sanghun Park on 2021/05/24.

import Foundation

var str = "Hello, playground"

// 1. for-in 구문
// - 기존 언어의 for-each 구문과 유사합니다.
// - Dictionary의 경우 이터레이션 아이템으로 튜플이 들어옵니다. (하단 애플 문서의 튜플 부분 참조)

// - for-in 구문 기본 형태
for item in items {
    /* 실행 구문 */
}

// - for-in 구문의 사용
var integers = [1, 2, 3]
let people = ["yagom": 10, "eric": 15, "mike": 12]

for integer in integers {
    print(integer)
}

// Dictionary의 item은 key와 value로 구성된 튜플 타입입니다
for (name, age) in people {
    print("\(name): \(age)")
}



// 2. while 구문

// - while 구문의 기본 형태
while 조건 {
    /* 실행 구문 */
}

// - while 구문의 사용
while integers.count > 1 {
    integers.removeLast()
}



// 3. repeat-while 구문
// - 기존 언어의 do-while 구문과 형태/동작이 유사합니다.

// - repeat-while 구문의 기본 형태
repeat {
    /* 실행 구문 */
} while 조건

// - repeat-while 구문의 사용
repeat {
    integers.removeLast()
} while integers.count > 0

//: [Next](@next)
