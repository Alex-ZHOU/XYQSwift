//
//  4-1 Swift 2.0逻辑控制之循环结构 - for-in,for
//  01-3-Loop-for-in-Swift3.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "01-3-Loop-for-in-Swift3"
print(str)


// 由于从Swift2.2开始，C风格的for循环，将在Swift3中被移除。如果要写一个改变步长的for循环，则需要使用定义在整型上的stride函数。

// Swift3实现一个递减循环
for i in stride (from: 10, through: 0, by: -1) {
    print(i, terminator:" ")
}
print("")
// Swift3实现一个从11开始步长为3，直至101的循环
for i in stride (from: 11,through: 101, by: 3) {
    print(i, terminator:" ")
}