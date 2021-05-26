//: [Previous](@previous)

// subject: 15. Closure (2단원 중 17)
// created by Sanghun Park on 2021/05/26.

import Foundation

var str = "Hello, playground"

// 1. 클로저
// - 클로저는 실행가능한 코드 블럭입니다.
// - 함수와 다르게 이름정의는 필요하지는 않지만, 매개변수 전달과 반환 값이 존재 할 수 있다는 점이 동일합니다.
// - 함수는 이름이 있는 클로저입니다.
// - 일급객체로 전달인자, 변수, 상수 등에 저장 및 전달이 가능합니다.



// 2. 기본 클로저 문법
// - 클로저는 중괄호 { }로 감싸져있습니다.
// - 괄호를 이용해 파라미터를 정의합니다.
// - -> 을 이용해 반환 타입을 명시합니다.
// - "in" 키워드를 이용해 실행 코드와 분리합니다.
/*
{ (매개변수 목록) -> 반환타입 in
    실행 코드
}
*/



// 3. 클로저 사용

// sum이라는 상수에 클로저를 할당
let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b
}

let sumResult: Int = sum(1, 2)
print(sumResult) // 3


// 4. 함수의 전달인자로서의 클로저
// - 클로저는 주로 함수의 전달인자로 많이 사용됩니다.
// - 함수 내부에서 원하는 코드블럭을 실행 할 수 있습니다.

let add: (Int, Int) -> Int
add = { (a: Int, b: Int) in
    return a + b
}

let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}

let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a / b
}

func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

var calculated: Int

calculated = calculate(a: 50, b: 10, method: add)

print(calculated) // 60

calculated = calculate(a: 50, b: 10, method: substract)

print(calculated) // 40

calculated = calculate(a: 50, b: 10, method: divide)

print(calculated) // 5

//따로 클로저를 상수/변수에 넣어 전달하지 않고,
//함수를 호출할 때 클로저를 작성하여 전달할 수도 있습니다.

calculated = calculate(a: 50, b: 10, method: { (left: Int, right: Int) -> Int in
    return left * right
})

print(calculated) // 500

//: [Next](@next)
