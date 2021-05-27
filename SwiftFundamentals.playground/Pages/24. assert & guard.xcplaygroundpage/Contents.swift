//: [Previous](@previous)

// subject: 24. asert & guard (2단원 중 25)
// created by Sanghun Park on 2021/05/27.

import Foundation

var str = "Hello, playground"

// 애플리케이션이 동작 도중에 생성하는 다양한 연산 결과값을 동적으로 확인하고 안전하게 처리할 수 있도록 확인하고 빠르게 처리할 수 있습니다.

// 1. Assertion
// - assert(_:_:file:line:) 함수를 사용합니다.
// - assert 함수는 디버깅 모드에서만 동작합니다.
// - 배포하는 애플리케이션에서는 제외됩니다.
// - 예상했던 조건의 검증을 위하여 사용합니다.

var someInt: Int = 0

// 검증 조건과 실패시 나타날 문구를 작성해 줍니다
// 검증 조건에 부합하므로 지나갑니다
assert(someInt == 0, "someInt != 0")

someInt = 1
//assert(someInt == 0) // 동작 중지, 검증 실패
//assert(someInt == 0, "someInt != 0") // 동작 중지, 검증 실패
// assertion failed: someInt != 0: file guard_assert.swift, line 26

func functionWithAssert(age: Int?) {
    
    assert(age != nil, "age == nil")
    
    assert((age! >= 0) && (age! <= 130), "나이값 입력이 잘못되었습니다")
    print("당신의 나이는 \(age!)세입니다")
}

functionWithAssert(age: 50)
//functionWithAssert(age: -1) // 동작 중지, 검증 실패
//functionWithAssert(age: nil) // 동작 중지, 검증 실패

// * assert(_:_:file:line:)와 같은 역할을 하지만 실제 배포 환경에서도 동작하는 precondition(_:_:file:line:) 함수도 있습니다. 함께 살펴보세요.



// 2. guard(빠른종료- Early Exit)
// - guard를 사용하여 잘못된 값의 전달 시 특정 실행구문을 빠르게 종료합니다.
// - 디버깅 모드 뿐만 아니라 어떤 조건에서도 동작합니다.
// - guard의 else 블럭 내부에는 특정 코드블럭을 종료하는 지시어(return, break 등)가 꼭 있어야 합니다.
// - 타입 캐스팅, 옵셔널과도 자주 사용됩니다.
// - 그 외에도 단순 조건 판단 후 빠르게 종료할 때도 용이합니다.

func functionWithGuard(age: Int?) {
    
    guard let unwrappedAge = age,
        unwrappedAge < 130,
        unwrappedAge >= 0 else {
        print("나이값 입력이 잘못되었습니다")
        return
    }
    
    print("당신의 나이는 \(unwrappedAge)세입니다")
}

var count = 1

while true {
    guard count < 3 else {
        break
    }
    print(count)
    count += 1
}
// 1
// 2

func someFunction(info: [String: Any]) {
    guard let name = info["name"] as? String else {
        return
    }
    
    guard let age = info["age"] as? Int, age >= 0 else {
        return
    }
    
    print("\(name): \(age)")
}

someFunction(info: ["name": "jenny", "age": "10"])
someFunction(info: ["name": "mike"])
someFunction(info: ["name": "yagom", "age": 10]) // yagom: 10




// ** if let / gurad 를 이용한 옵셔널 바인딩 비교 **
/*:
 ```swift
 
 // 1. if let 옵셔널 바인딩
 if let unwrapped: Int = someValue {
 // do something
    unwrapped = 3
 }
 // if 구문 외부에서는 unwrapped 사용이 불가능 합니다.
 // unwrapped = 5

 // 2. guard 옵셔널 바인딩
 // gaurd 구문 이후에도 unwrapped 사용 가능합니다.
 guard let unwrapped: Int = someValue else {
          return
 }
 unwrapped = 3

 ```
 */

//: [Next](@next)
