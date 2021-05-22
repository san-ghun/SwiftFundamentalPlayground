//: [Previous](@previous)

// subject: 02. basic data types (1단원 중 04)
// created by Sanghun Park on 2021/05/22.

import Foundation

var str = "Hello, playground"

/*:
 Swift 기본 데이터 타입
 - Bool
 - Int, UInt
 - Float, Double
 - Character, String
 */

// Bool - true/false
var someBool: Bool = true
someBool = false
// someBool = 0 // 컴파일 오류발생
// someBool = 1 // 컴파일 오류발생


// Int - 64비트 정수형
var someInt: Int = -100
// someInt = 100.1 // 컴파일 오류발생

//UInt - 64비트 양의 정수형
var someUInt: UInt = 100
// someUInt = -100 // 컴파일 오류발생
// someUInt = someInt // 컴파일 오류발생


// Float - 32비트 부동소수형
var someFloat: Float = 3.14
someFloat = 3

// Double - 64비트 부동소수형
var someDouble: Double = 3.14
someDouble = 3
// someDouble = someFloat // 컴파일 오류발생


// Character - 문자 타입, 유니코드 사용
var someCharacter: Character = "🇰🇷"
someCharacter = "😄"
someCharacter = "가"
someCharacter = "A"
// someCharacter = "하하하" // 컴파일 오류발생
print(someCharacter)

// String - 문자열 타입, 유니코드 사용
var someString: String = "하하하 😄 "
someString = someString + "웃으면 복이와요"
print(someString)

// someString = someCharacter // 컴파일 오류발생


//: [Next](@next)
