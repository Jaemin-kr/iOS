//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
class Person{
    var height: Float = 0.0
    var weight: Float = 0.0
}
var jaemin: Person = Person()
let friend: Person = jaemin
let anotherFriend: Person = Person()

print(jaemin == friend)
print(jaemin == anotherFriend)
print(friend != anotherFriend)

