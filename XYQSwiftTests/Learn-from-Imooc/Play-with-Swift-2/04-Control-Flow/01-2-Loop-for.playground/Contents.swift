//
//  4-1 Swift 2.0逻辑控制之循环结构 - for-in,for
//  01-2-Loop-for.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "01-2-Loop-for"
print(str)


// for-in
for i in -99...99{
    i*i
}

// for
// 如下C风格的for循环，将在Swift3.0中被移除。现在，大家使用这种风格的循环会看到一个警告。请大家拥抱for-in循环吧！
//for var i = -99 ; i <= 99 ; i += 1 {
//    i*i
//}

// 将循环初始条件放在外面
var index = -99
// 如下C风格的for循环，将在Swift3.0中被移除
//for ; index <= 99 ; index += 1 {
//    index*index
//}
for _ in 0..<199{
    index * index
    index += 1
}

// 循环变量的更改可以自定义 
// 如下C风格的for循环，将在Swift3.0中被移除
//for var a = -6.28 ; a <= 6.28 ; a += 0.1{
//    sin(a)
//}
var a = 628
for a in -628...628{
    sin(Double(a)/Double(100))
}


index = -99
var step = 1
// 如下C风格的for循环，将在Swift3.0中被移除
//for ; index <= 99 ; index += step {
//    index*index
//    step *= 2
//}



