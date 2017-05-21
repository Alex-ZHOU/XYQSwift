//
//  4-2 Swift 2.0逻辑控制之循环结构 - while和repeat
//  02-3-break-and-continue.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "02-3-break-and-continue"
print(str)


var a: Int
var b: Int
while true{
    
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    
    if a == b{
        print("draw")
        continue
    }
    
    let winner = a > b ? "A" : "B"
    print("\( winner ) win!")
    break
}
