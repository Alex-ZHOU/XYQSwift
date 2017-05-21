//
//  4-4 Swift 2.0逻辑控制之switch的高级用法
//  04-3-switch-advanced.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "04-3-switch-advanced"
print(str)


let point = (1,1)
switch point{
case (0,0):
    print("It's origin!")
case (_,0):
    print("It on the x-axis.")
case (0,_):
    print("It on the y-axis.")
default:
    print("It's just an ordinary point.")
}

switch point{
case (0,0):
    print("It's origin!")
case (_,0):
    print("It on the x-axis.")
case (0,_):
    print("It on the y-axis.")
case (-2...2,-2...2):
    print("It's near the origin.")
default:
    print("It's just an ordinary point.")
}

// Value binding
switch point{
case (0,0):
    print("It's origin!")
case (let x,0):
    print("It on the x-axis.")
    print("The x value is \(x)")
case (0,let y):
    print("It on the y-axis.")
    print("The y value is \(y)")
case (let x,let y):
    print("It's just an ordinary point.")
    print("The point is ( \(x) , \(y) )")
}