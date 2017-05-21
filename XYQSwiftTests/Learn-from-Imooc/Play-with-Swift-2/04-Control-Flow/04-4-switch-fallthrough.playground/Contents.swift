//
//  4-4 Swift 2.0逻辑控制之switch的高级用法
//  04-4-switch-fallthrough.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "04-4-switch-fallthrough"
print(str)


let point = (0,0)
switch point{
case (0,0):
    print("It's origin!")
    fallthrough
case (_,0):
    print("It's on the x-axis.")
    fallthrough
case (0,_):
    print("It's on the y-axis.")
    fallthrough
case (-2...2,-2...2):
    print("It's near the origin.")
    fallthrough
default:
    print("It's just an ordinary point.")
}

// 注意：fallthrough 并不会判断下一个case（或者default）是否符合switch的条件，而是直接跳到下一个case（或者default）。

// 首先，fallthrough不能跳转到一个有逻辑的case中
// 下面的程序fallthrough不能使用
let num = 3
switch num{
case -3...3:
    print("small number")
    //fallthrough
case let x where x%2 == 1:
    print("odd number")
default:
    break
}
// 其次，不要用switch和fallthrough组合复杂的判断逻辑
// fallthrough应该用于从一般到特殊的判定
// 以下代码的输出，就是错误的。
let num2 = 3
switch num2{
case -3...3:
    print("small number")
    fallthrough
case 0:
    print("zero")
    fallthrough
case -100..<0:
    print("negative number")
    fallthrough
case 1...100:
    print("positive number")
    fallthrough
default:
    print("a number")
}
