//
//  3-2 Swift 2.0运算符之比较运算符、逻辑运算符和判断语句
//  02-Comparison-and-Logic-Operator.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "02-Comparison-and-Logic-Operator"
print(str)


let money = 100
let price = 70
// 比较运算符
if money > price{
    print("Buy it!")
}

let capacity = 30
let volume = 50
// 逻辑运算符
if capacity >= volume && money >= price{
    print("Buy it! 2")
}
if money < price || capacity < volume {
    print("Can't buy it!")
}
if !(money >= price && capacity >= volume){
    print("Can not buy it")
}

// 复杂逻辑的串联
var isUsernameOK = false
var isPasswordOK = false
var isPhoneNumberOK = true
var isPhoneCodeOK = false
if (isUsernameOK && isPasswordOK) ||
    (isPhoneNumberOK && isPhoneCodeOK){
    print("Login success!")
}
else{
    print("Login Failed!")
}


