//
//  2-4 Swift 2.0基本类型之布尔类型和简单的if语句
//  04-Boolean-and-if.playground
//
//  Created by AlexZHOU on 16/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "04-Boolean-and-if"
print(str)


let imTrue = true
let imFalse = false


// if语句，不需要()，必须{}
if imTrue{
    print("Im true!")
}
else{
    print("I'm false!")
}

// 非零值不可以作为真值；零也不可以代表假
//if 1{
//    print("true")
//}
