//
//  4-6 Swift 2.0逻辑控制之where 与模式匹配
//  06-3-for-case-where.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "06-3-for-case-where"
print(str)


for i in 1...100{
    if i%3 == 0{
        print(i,terminator: " ")
    }
}

print("")

for case let i in 1...100 where i % 3 == 0{
    print(i,terminator: " ")
}
