//
//  4-6 Swift 2.0逻辑控制之where 与模式匹配
//  06-2-if-case-where.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "06-2-if-case-where"
print(str)


let age = 19
switch age {
case 10...19:
    print("You're a teenager.")
default:
    print("You're a teenager.")
}

if case 10...19 = age{
    print("You're a teenager.")
}

// swith3.0 使用逗号代替where
if case 10...19 = age , age >= 18{
    print("You're a teenager and in a college!")
}

let vector = (4,0)
if case ( let x , 0 ) = vector , x > 2 && x < 5{
    print("It's the vector!")
}
