//
//  4-3 Swift 2.0逻辑控制之选择结构 - if,else和switch
//  03-if-else-switch.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "03-if-else-switch"
print(str)


// if - else
var rating = "A"
if rating == "A"{
    print("Great!")
}
else if rating == "B"{
    print("Just so-so")
}
else if rating == "C"{
    print("It's Bad")
}
else{
    print("Error")
}


rating = "a"
// switch
switch rating{
case "a","A":
    print("Great!")
case "B":
    print("Just so-so")
case "C":
    print("It's Bad")
default:
    print("Error")
}

// 使用switch判断浮点数
let x = 2.8
switch x{
case 2.8:
    print("I'm 2.8")
default:
    print("I'm not 2.8")
}

// 使用switch判断布尔值
let y = true
switch y{
case true:
    print("I'm true")
default:
    print("I'm false")
}