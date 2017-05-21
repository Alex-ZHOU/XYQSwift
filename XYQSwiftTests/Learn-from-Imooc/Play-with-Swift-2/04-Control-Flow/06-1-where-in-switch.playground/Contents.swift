//
//  4-6 Swift 2.0逻辑控制之where 与模式匹配
//  06-1-where-in-switch.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "06-1-where-in-switch"
print(str)


let point = (3,3)
switch point{
case let (x,y) where x == y:
    print("It's on the line x == y!")
case let (x,y) where x == -y:
    print("It's on the line x == -y!")
case let (x,y):
    print("It's just an ordinary point.")
    print("The point is ( \(x) , \(y) )")
}