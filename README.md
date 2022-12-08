# Swift

---

## 1부 스위프트 기초

## 명명법/콘솔로그/문자열 보간법

---

others → empty project생성 → file → new → playground생성

- 명명법: CamelCase(대소문자 구분)
- 콘솔로그: 코드의 실행 결과를 보여줌
print와 dump사용이 가능한데 print는 단순히 문자열을 출력 하지만 dumb는 인스턴스의 property까지 출력
- 문자열 보간법 프로그램 실행중 문자열에 변수나 상수값을 표현하기 위해 
\(age)를 사용하여 출력

## 상수와 변수

---

상수(constant)와 변수(variable)의 차이는 값이 변하지 않는 것에 있다.

```swift
let num : Int = 10
var num_var : Int = 5

print("\(num)")
```

var는 값을 다시 할당해서 변경할 수 있지만 let은 불가능하다.

만약 나중에 사용할 변수를 사용하고 싶다면 타입을 **명확히 정의** 하여 미리 선언할 수 있다.

```swift
var sum : Int
```

## 배열과 딕셔너리

---

배열과 딕셔너리는 모두 []를 사용하여 정의한다

```swift
var languages = ["Swift", "Objective-C", "Pthon"]
var capitals = [
    "한국": "서울",
    "일본": "도쿄",
    "중국": "베이징",
]

languages[0]
languages[1] = "Ruby"

capitals["한국"]
capitals["프랑스"] = "파리"
```

변수와 상수처럼 변수의 이름 뒤에 타입을 정의할 수 있으며 빈 배열과 딕셔너리도 생성할 수 있다

```swift
var language: [String] = ["Swift", "Objective-C", "Pthon"]
var capitals: [String: String] = [
    "한국": "서울",
    "일본": "도쿄",
    "중국": "베이징",
]

var languages: [String] = []
var cities: [String: String] = [:]

var languages = [String]()
var cities = [String: String]()

```

## Any, AnyObject, nil

---

Any - Swift의 모든 타입을 지칭할 수 있음

AnyObject - 클래스의 모든 타입을 지칭하는 프로토콜

nil - 비어있는 값이지만 Any와 AnyObject에 할당하지 못함(NULL,null, Null과 같음)

## 컬렉션타입(Array, Dictionary, Set)

---

- 영어 알파벳 소문자를 모아두는 컬렉션
- 책의 제목과 저자 정리를 위한 컬렉션
- Boostcamp iOS 수강생 명부 작성을 위한 컬렉션

Array: 순서가 있는 리스트(인덱스가 존재)로 리터럴 문법을 활용할 수 있음

Dictionary: key - value pair로 리터럴 문법을 사용할 수 있음

Set: 순서가 없고 중복이 허용되지 않는 컬렉션 타입

## 2부 객체지향 프로그래밍과 스위프트

## 9장 구조체와 클래스

구조체와 클래스는 데이터를 용도에 맞게 묶어 표현할 때 유용함

각각 property와 method를 사용하여 데이터와 기능을 구조화시켜 새로운 사용자 정의 데이터 타입을 생성한다.

### 차이점

---

구조체의 인스턴스는 값타입이고 클래스의 인스턴스는 참조타입이다.

- 값타입
- 참조타입:

### 9.1 구조체

---

- 구조체는 struct로 정의한다.

```swift
struct BasicInfo{
	var name:String
	var age: Int
}
//Property: name, age
```

- 구조체의 생성 및 사용

```swift
var jaeminInfo: BasicInfo = BasicInfo(name: "jaemin", age: 99)
jaeminInfo.age = 100
jaeminInfo.name = "Seba"

let sebaInfo: BasicInfo = BasicInfo(name: "Seba", age: 99)
sebaInfo.age = 100 //error!
```

### 9.2 클래스

---

인스턴스 생성과 활용, 스위프트의 클래스는 부모클래스의 상속없이 단독으로 정의가능함