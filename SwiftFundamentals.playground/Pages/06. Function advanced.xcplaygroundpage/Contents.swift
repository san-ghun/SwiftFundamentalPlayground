//: [Previous](@previous)

// subject: 06. Function advanced (1단원 중 08)
// created by Sanghun Park on 2021/05/24.

import Foundation

var str = "Hello, playground"

// 1. 매개변수 기본 값
// - 매개변수에 기본적으로 전달될 값을 미리 지정해 둘 수 있습니다.
// - 기본값을 갖는 매개변수는 매개변수 목록 중 뒤쪽에 위치하는 것이 좋습니다.

func 함수이름(매개변수1이름: 매개변수1타입, 매개변수2이름: 매개변수2타입 = 매개변수 기본값 ...) -> 반환타입 {
    /* 함수 구현부 */
    return 반환값
}

func greeting(friend: String, me: String = "yagom") {
    print("Hello \(friend)! I'm \(me)")
}

// 매개변수 기본값을 가지는 매개변수는 호출시 생략할 수 있습니다
greeting(friend: "hana") // Hello hana! I'm yagom
greeting(friend: "john", me: "eric") // Hello john! I'm eric



// 2. 전달인자 레이블(Argument Label)
// - 함수를 호출할 때 함수 사용자의 입장에서 매개변수의 역할을 좀 더 명확하게 표현하고자 할 때 사용합니다.
// - 전달인자 레이블은 변경하여 동일한 이름의 함수를 중복으로 생성가능합니다.

func 함수이름(전달인자 레이블 매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입 ...) -> 반환타입 {
    /* 함수 구현부 */
    return
}

// 함수 내부에서 전달인자를 사용할 때에는 매개변수 이름을 사용합니다
func greeting(to friend: String, from me: String) {
    print("Hello \(friend)! I'm \(me)")
}

// 함수를 호출할 때에는 전달인자 레이블을 사용해야 합니다
greeting(to: "hana", from: "yagom") // Hello hana! I'm yagom



// 3. 가변 매개변수
// - 전달 받을 값의 개수를 알기 어려울 때 사용합니다.
// - 가변 매개변수는 함수당 하나만 가질 수 있습니다.
// - 기본값이 있는 매개변수와 같이 가변 매개변수 역시 매개변수 목록 중 뒤쪽에 위치하는 것이 좋습니다.

func 함수이름(매개변수1이름: 매개변수1타입, 전달인자 레이블 매개변수2이름: 매개변수2타입...) -> 반환타입 {
    /* 함수 구현부 */
    return
}

func sayHelloToFriends(me: String, friends: String...) -> String {
    return "Hello \(friends)! I'm \(me)!"
}
print(sayHelloToFriends(me: "yagom", friends: "hana", "eric", "wing"))
// Hello ["hana", "eric", "wing"]! I'm yagom!

print(sayHelloToFriends(me: "yagom"))
// Hello []! I'm yagom!

// **반환값이 없는 함수, 매개변수 기본 값, 전달인자 레이블, 가변 매개변수 등 모두 섞어서 사용 가능합니다.**




// 4. 데이터 타입으로서의 함수
// - 스위프트는 함수형 프로그래밍 패러다임을 포함하는 다중 패러다임 언어이므로 스위프트의 함수는 일급객체입니다. 그래서 함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수도 있습니다.
// - 함수의 타입 표현 : 반환 타입을 생략할 수 없습니다.

// - 함수타입 사용
var someFunction: (String, String) -> Void = greeting(to:from:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

someFunction = greeting(friend:me:)
someFunction("eric", "yagom") // Hello eric! I'm yagom

// 타입이 다른 함수는 할당할 수 없습니다 - 컴파일 오류 발생
//someFunction = sayHelloToFriends(me: friends:)

func runAnother(function: (String, String) -> Void) {
    function("jenny", "mike")
}

// Hello jenny! I'm mike
runAnother(function: greeting(friend:me:))

// Hello jenny! I'm mike
runAnother(function: someFunction)

    
//** 스위프트 전반적인 문법에서 띄어쓰기를 신경써야할 때가 많습니다.

//: [Next](@next)
