//
//  4-1 Swift 2.0逻辑控制之循环结构 - for-in,for
//  01-1-Loop-for-in.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "01-1-Loop-for-in"
print(str)


for i in -99...99{
    i * i
}

// 利用下划线"_"
var a = -99
for _ in 0..<199{
    a * a
    a += 1
}

// c-style形式的循环模式在swift3.0中已经彻底删除
//for var i = -99 ; i < 99 ; i += 1 {
//    i * i
//}

var result = 1
var base = 2
var power = 10
for _ in 1...power{
    result *= base
}
result
