//
//  2-1 Swift 2.0基本类型之常量、变量和声明
//  01-Constants-and-Variables.playground
//
//  Created by AlexZHOU on 16/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "01-Constants-and-Variables"
print(str)


let maxNum = 1000

// 常量不可以被改变
//maxNum = 0
var index = 2
// 变量可以被改变
index = 3


// 可以一次声明多个变量（或常量）
var x = 1 , y = 2 , z = 3
// Swift语言是强类型语言
//x = "Hello"

// 显式的声明变量类型
var websiteName: String = "www.imooc.com"
websiteName = "www.liuyubobobo.com"

// 一次为多个变量显式声明类型
var a , b , c: Double
