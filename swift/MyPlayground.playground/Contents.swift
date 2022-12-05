import UIKit

var greeting = "Hello, playground"

//let age: Int = 10

//"Hello My age is \(age)"
//"Hello My age is \(age+15)"
//
//print("Hello My age is \(age+15)")

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

//221205
//Object oriented programming
class SomeClass{
    var someProperty: Any = 1
    func someMethod() {
        //some task
    }
}

let myInstance: SomeClass = SomeClass()
//constant myInstance에 someClass할당
//생성자를 통해 메모리에 할당되고 초기화한 객체를 인스턴스라고 부름

myInstance.someProperty = 100
print(myInstance.someProperty)

myInstance.someMethod()


//functional programming
func doSomething(){
    print("do something")
}

func doAnotherThing(){
    print("do another thing")
}

func execute(tasks: [()->Void]){
    for task in tasks{
        task()
    }
}

execute(tasks: [doSomething, doAnotherThing])

func sum(first:Int) -> ((Int)->Int){
    return { second in first + second }
}
sum(first: 10)(5)

var j: Int = 0

for i in 0...3{
    j += i
}


var name: String = "jaemin"
var age: Int = 25
var job = "Student"
var height = 178.8

age = 99
job = "iOS Programmer"

print("저의 이름은 \(name)이고, 나이는 \(age)세며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)cm 입니다.")
