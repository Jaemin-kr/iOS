import UIKit

var greeting = "Hello, playground"

let age: Int = 10

"Hello My age is \(age)"
"Hello My age is \(age+15)"

print("Hello My age is \(age+15)")

class Person{
    var name: String = "Jaemin"
    var age: Int = 10
}

let jaemin: Person = Person()

print(jaemin)

print("\n------------\n")

dump(jaemin)

//상수와 변수
let num : Int = 10
var num_var : Int = 5
let a : Int = 4
var sum : Int

sum = a+num_var

print("\(num)")
print("\(num_var)")

num_var = 25

print("\(num_var)")
print("\(sum)")

var someBool : Bool = true
someBool = false
print("\(someBool)")

//swift dictionary

//var languages = ["Swift", "Objective-C", "Pthon"]
//var capitals = [
//    "한국": "서울",
//    "일본": "도쿄",
//    "중국": "베이징",
//]
//
//languages[0]
//languages[1] = "Ruby"
//
//capitals["한국"]
//capitals["프랑스"] = "파리"

var languages: [String] = ["Swift", "Objective-C", "Pthon"]
var capitals: [String: String] = [
    "한국": "서울",
    "일본": "도쿄",
    "중국": "베이징",
]

//빈 배열 선언
var language_arr: [String] = []
var capital_city: [String: String] = [:]

//다른표현, 생성자 사용
var language_arr1 = [String]()
var cities = [String:String]()
