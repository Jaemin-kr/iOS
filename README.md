# Swift

---

### Swift API design guideline

[Swift.org](https://www.swift.org/documentation/api-design-guidelines/)

## 1부 스위프트 기초

## 2장 스위프트 처음 시작하기

---

### 2.2 명명법/콘솔로그/문자열 보간법

---

others → empty project생성 → file → new → playground생성

- 명명법: CamelCase(대소문자 구분)
- 콘솔로그: 코드의 실행 결과를 보여줌
print와 dump사용이 가능한데 print는 단순히 문자열을 출력 하지만 dumb는 인스턴스의 property까지 출력
- 문자열 보간법 프로그램 실행중 문자열에 변수나 상수값을 표현하기 위해 
\(age)를 사용하여 출력

### 2.3 주석

---

### 2.4 상수와 변수

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

상수는 변하지 않는 값이므로 불변하는 값일 경우 선언하는 것이 좋다.

ex) 입력받는 수의 최대 크기…

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

## 컬렉션타입(Array, Dictionary, Set)

---

- 영어 알파벳 소문자를 모아두는 컬렉션
- 책의 제목과 저자 정리를 위한 컬렉션
- Boostcamp iOS 수강생 명부 작성을 위한 컬렉션

Array: 순서가 있는 리스트(인덱스가 존재)로 리터럴 문법을 활용할 수 있음

Dictionary: key - value pair로 리터럴 문법을 사용할 수 있음

Set: 순서가 없고 중복이 허용되지 않는 컬렉션 타입

### 

## 3장 데이터 타입 기본

스위프트의 기본 데이터 타입을 구조체를 기반으로 Extension, Generic등을 이용하여 다양하게 구현되어있음, 모든 데이터 타입은 첫 글자가 대문자로 시작하는 대문자 카멜케이스를 사용

### 3.1 Int와 Uint

---

정수타입으로 Int는 양의정수와 음의 정수를 포함하며, Uint는 음의 정수를 제외한 0과 양의 정수를 표현한다. 구조체로 선언되어있기 때문에 각각 max, min property를 이용하여 타입의 최댓값과 최솟값을 알아낼 수 있다. 또한 각각 Int와 Uint는 8, 16, 32, 64 bit형태의 데이터 타입이 존재한다.

- Int와 Uint

```swift
var integer: Int = -100
let unsignedInteger: UInt = 50
print("integer 값: \(integer), unsignedInteger 값: \(unsignedInteger)")
print("Int 최댓값: \(Int.max), Int 최솟값 \(Int.min)")
print("Uint 최댓값: \(UInt.max), Uint 최솟값 \(UInt.min)")

let largeInteger: Int64 = Int64.max

let smallUnsignedInteger: UInt8 = UInt8.max
print("Int64 최댓값: \(largeInteger), UInt 최대값: \(smallUnsignedInteger)")

let tooLarge: Int = Int.max + 1
let cannotBeNegative: UInt = -5

integer = unsignedInteger //Max error
integer = Int(unsignedInteger)
```

- 진수별 정수 표현 방법

```swift
let decimalInteger: Int = 28
let binaryInteget: Int = 0b11100
let octalInteger: Int = 0o34
let hexadecimalInteger: Int = 0x1C
```

### 3.2 Bool

---

### 3.3 Float와 Double

---

### 3.4 Character

---

### 3.5 String

---

### 3.6 Any, AnyObject와 nil

---

Any - Swift의 모든 타입을 지칭할 수 있음(변수또는 상수에 어떤 종류의 데이터 타입이든지 할당할 수 있음)

AnyObject - 클래스의 모든 타입을 지칭하는 프로토콜

nil - 비어있는 값이지만 Any와 AnyObject에 할당하지 못함(NULL,null, Null과 같음), 변수 또는 상수의 값이 nil일 경우 해당 변수 또는 상수에 접근할 시 잘못된 메모리 접근으로 런타임 오류가 발생

<aside>
👉 Any와 AnyObject는 될 수 있으면 사용하지 않는 편이 좋음
선언된 변수의 값을 사용할 시 매번 타입 확인 및 변환을 해주어야 하기 때문

</aside>

## 4장 데이터 타입 고급

## 5장 연산자

## 6장 흐름 제어

## 7장 함수

## 8장 옵셔널

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

- 클래스의 정의

```swift
class Person{
	var height: Float = 0.0
	var weight: Float = 0.0
} //Property height, weight
```

- 클래스 인스턴스 생성및 사용

```swift
var jaemin: Person = Person()
jaemin.height = 123.4
jaemin.weight = 123.4

let jenny: Person = Person()
jenny.height = 123.4
jenny.height = 123.4
```

- 클래스 인스턴스 소멸
: 더이상 참조가 필요없을 때 메모리에서 해제 → deinit메서드 호출, 클래스 내부에 deinit 메서드를 구현해주면 소멸직전 deinit메서드가 호출됨. 이 때, deinit메서드를 Deinitializer라고 부름. deinit메서드는 클래스당 하나만 구현할 수 있으며 매개변수와 반환값을 가질 수 없다.

```swift
//Person class의 인스턴스 생성 및 소멸
class Person{
	var height: Float = 0.0
	var weight: Float = 0.0

	deinit{
		print("Person 클래스의 인스턴스가 소멸됩니다.")
	}
}

var jaemin: Person? = Person()
jaemin = nil //클래스의 인스턴스가 소멸됨
```

### 9.3 구조체와 클래스의  차이

---

- 구조체는 클래스와 달리 상속할 수 없다.
- 타입캐스팅은 클래스의 인스턴스에만 허용된다.
- Deinitializer는 클래스의 인스턴스에만 활용할 수 있다.
- Reference counting은 클래스의 인스턴스에만 적용가능하다.
- **구조체는 값 타입이고 클래스는 참조 타입이다.**

값 타입: 어떤 함수의 argument로 값을 넘기면 값이 복사되어 전달됨

참조타입: 값을 넘길 때 값을 복사하는것이 아닌 **참조(주소, 포인터와 유사한 개념)**가 전달됨

값 타입의 데이터를 함수인자로 전달하면 메로리에 전달인자를 위한 인스턴스가 새로 생성되어 값을 복사하여 전달하지만 참조 타입의 데이터는 기존 인스턴스의 참조를 전달하므로 새로운 인스턴스가 아닌 기존의 인스턴스를 참조하여 전달한다.

클래스의 인스턴스끼리 참조가 같은지 확인할 때는 **식별 연산자(Identity Operators)**를 사용한다.

```swift
var jaemin: Person = Person()
let friend: Person = jaemin
let anotherFriend: Person = Person()

print(jaemin == friend)//T
print(jaemin == anotherFriend)//F
print(friend != anotherFriend)//T
```

스위프트의 기본 데이터 타입은 모두 구조체

```swift
public struct String{
	public init()
}
```

스위프트의 다른 기본타입(Bool, Int, Array, Dictionary, Set 등등)도 모두 구조체로 구현되어 있으므로 모두 값 타입이다. 전달인자를 통해 값을 전달하면 값을 복사하여 전달한다. → 기존의 상수에는 영향을 미치지 않는다.

### 9.4 구조체와 클래스 선택해서 사용하기

---

구조체와 클래스는 사용자가 새로운 데이터 타입을 정의한다는 것은 같지만 구조체 인스턴스는 값 타입이고 클래스 인스턴스는 참조타입이다. → 비슷하지만 용도는 다르다

애플의 가이드라인에서는 다음 중 하나 이상에 해당한다면 구조체를 사용할 것을 권장한다.

- 연관된 간단한 값의 집합을 캡슐화하는 것만이 목적일 때
- 캡슐화한 값을 참조하는 것보다 복사하는 것이 합당할 때
- 구조체에 저장된 Property가 값 타입이며 참조하는 것보다 복사하는것이 합당할 때
- 다른 타입으로부터 상속받거나 자신을 상속할 필요가 없을 때

구조체로 표현하기 적합한 예로는 x, y좌표계가 있고 Int로 x, y property를 생성한다. 또한, 물체의 크기를 표현하고자 할때는 Double, Float를 이용하여 width, height, depth등으로 묶어서 표현한다.