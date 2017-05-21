//
//  4-2 Swift 2.0逻辑控制之循环结构 - while和repeat
//  02-2-Loop-repeat.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "02-2-Loop-repeat"
print(str)


var aWin = false
var bWin = false
repeat{
    
    let a = arc4random_uniform(6)+1
    let b = arc4random_uniform(6)+1
    print("a is \(a) , b is \(b). ",terminator:"")
    
    if a > b{
        aWin = true
    }
    else if a < b{
        bWin = true
    }
    else{
        print("draw",terminator:"")
    }
    print("")
}while !aWin && !bWin

//print(game)
let winner = aWin ? "A" : "B"
print("\( winner ) win!")