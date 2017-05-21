//
//  4-4 Swift 2.0逻辑控制之switch的高级用法
//  04-2-switch-advanced.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "04-2-switch-advanced"
print(str)


let vector = (1,1)
switch vector{
case (0,0):
    print("It's origin!")
case (1,0):
    print("It an unit vector on the positive x-axis.")
case (-1,0):
    print("It an unit vector on the negative x-axis.")
case (0,1):
    print("It an unit vector on the positive y-axis.")
case (0,-1):
    print("It an unit vector on the negative y-axis.")
default:
    print("It's just an ordinary vector.")
}


