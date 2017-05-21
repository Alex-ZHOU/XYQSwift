//
//  2-2 Swift 2.0基本类型之整型
//  02-Int.playground
//
//  Created by AlexZHOU on 16/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "02-Int"
print(str)


// 整型Int
var imInt:Int = 88
Int.max
Int.min

// UInt
UInt.max
UInt.min

// Int8
Int8.max
Int8.min
// 溢出在Swift语言中是一种编译错误
//let a: Int8 = 255

// UInt8
UInt8.max
UInt8.min


// Int16
Int16.max
Int16.min

// Int32
Int32.max
Int32.min

// Int64
Int64.max
Int64.min


// 二进制0b
let binaryInt: Int  = 0b10001

// 八进制0o
let octalInt: Int   = 0o21

// 十六进制0x
let hexInt:Int      = 0x11

// 使用_标示数字位
let x = 1_000_000
