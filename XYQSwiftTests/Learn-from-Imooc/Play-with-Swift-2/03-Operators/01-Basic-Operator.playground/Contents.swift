//
//  3-1 Swift 2.0运算符之基础运算符
//  01-Basic-Operator.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "01-Basic-Operator"
print(str)


// 赋值运算符
var a = 3
a = 2

// 赋值语句没有返回值
if a == 2{
    print("a = 2")
}
else{
    print("a != 2")
}

//数学运算符
var x = 10
var y = 3
var z = 0
x + y
x - y
x * y
x / y
x % y
// 对于 / 和 %，除数不能为0
//x / z
//x % z

let u = 5.5
let v = 2.2
// swift3.0 已经不支持double类型求余
// u%v
// Double(u) % Double(v)
// 求余正确写法
u.truncatingRemainder(dividingBy: v)
let w = 3.0
w.truncatingRemainder(dividingBy: v)

// 一元运算符
var xx = +x
var yy = -y

// += , %=
x += 2
x %= 2

// ++ 和 --
// 虽然在Swift2.2中，仍然可以使用 ++ 和 --， 但是编译器会提示Warning。
// 同时， ++和--操作将在Swift3中取消。
//x++
//++x
// 建议使用 += 1; -=1 来代替++和--
x += 1
x -= 1

