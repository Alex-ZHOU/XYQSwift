//
//  4-5 Swift 2.0逻辑控制之控制转移
//  05-control-transfer.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "05-control-transfer"
print(str)


// x^4 - y^2 = 15*x*y
var gotAnswer = false
for m in 1...300{
    for n in 1...300{
        if m*m*m*m - n*n == 15*m*n{
            print(m,n)
            gotAnswer = true
            break
        }
    }
    
    if gotAnswer{
        break
    }
}

findAnswer:
    for m in 1...300{
        for n in 1...300{
            if m*m*m*m - n*n == 15*m*n{
                print("x="+"\(m) y="+"\(n)")
                break findAnswer
            }
        }
}