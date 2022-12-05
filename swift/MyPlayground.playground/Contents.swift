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

//Array, Dictionary and Set
var integers: Array<Int> = Array<Int>()
// 위와 동일한 표현
// var integers: Array<Int> = [Int]()
// var integers: Array<Int> = []
// var integers: [Int] = Array<Int>()
// var integers: [Int] = [Int]()
// var integers: [Int] = []
// var integers = [Int]()
integers.append(1)
integers.append(100)
print(integers)

integers[0] = 25
print(integers)

integers.remove(at: 0) //integers[0] delete
integers.removeLast() //delete last index
print(integers)
integers.removeAll()

print(integers.count) //count integers

let immutableArray = [1, 2, 3, 5]
//수정 불가능한 Array

//key가 String, value가 Any인 Dictionary생성
var anyDictionary: Dictionary<String, Any> = [String: Any]()
anyDictionary["someKey"] = "value"
anyDictionary["anotherKey"] = 100


anyDictionary["someKey"] = "dictionary"
anyDictionary.removeValue(forKey:"anotherKey")
print(anyDictionary)
anyDictionary["someKey"] = nil
print(anyDictionary)

// 3. 불변 Dictionary: let을 사용하여 Dictionary 선언
let emptyDictionary: [String: String] = [:]
let initalizedDictionary: [String: String] = ["name": "yagom", "gender": "male"]

//Set 생성 및 선언
var integerSet: Set<Int> = Set<Int>()

integerSet.insert(1)
integerSet.insert(99)
integerSet.insert(199)
integerSet.insert(99)
integerSet.insert(100)

print(integerSet)

print(integerSet.contains(1)) // true
print(integerSet.contains(2)) // false

integerSet.remove(199)
integerSet.removeFirst()

integerSet.count

//Set의 활용
let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]

let union: Set<Int> = setA.union(setB)
print(union)

let sortedUnion: [Int] = union.sorted()
print(sortedUnion)

let intersection: Set<Int> = setA.intersection(setB)
print(intersection)

let subtraction: Set<Int> = setA.subtracting(setB)
print(subtraction)

