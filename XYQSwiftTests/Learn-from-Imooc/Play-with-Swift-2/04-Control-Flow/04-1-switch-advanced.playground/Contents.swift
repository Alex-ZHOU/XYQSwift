//
//  4-4 Swift 2.0逻辑控制之switch的高级用法
//  04-1-switch-advanced.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "04-1-switch-advanced"
print(str)


let score = 90
switch score {
case 0:
     print("You got an egg!")
case 1..<60:
    print("You failed.")
case 60:
    print("Just passed")
case 61..<80:
    print("Just so-so")
case 80..<90:
    print("Good")
case 90..<100:
    print("Great!")
case 100:
    print("Perfect!")
default:
    print("Error score.")
}
