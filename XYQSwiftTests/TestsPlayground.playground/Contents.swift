//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

print(str)



// ios8 swift 编程指南

// 结构体
struct IntPair {
    let a:Int!
    let b:Int!
    
    init(a:Int,b:Int){
        self.a = a
        self.b = b
    }
    
    func equal() -> Bool {
        return a==b
    }
}

let intPair = IntPair(a:5,b: 10)
intPair.a
intPair.b
intPair.equal()

// 泛型
struct Pair<T:Equatable> {
    let a:T!
    let b:T!
    
    init(a:T,b:T){
        self.a = a
        self.b = b
    }
    
    func equal() -> Bool {
        return a==b
    }
}
let pair = Pair(a: 20, b: 50)
pair.equal()


var people:Dictionary<String,AnyObject> = ["name":"Jack","age":25]
people["name"]
people["high"] = 157
people["high"]
people["age"] = nil
for key in people.keys{
    print("\(key)")
}
for value in people.values{
    print("\(value)")
}


let (fitstNumber,secondNumber) = (10,42)

fitstNumber
secondNumber

var s:String = "hello "
s+="world"

s.characters.count

let million = 1_000_000





