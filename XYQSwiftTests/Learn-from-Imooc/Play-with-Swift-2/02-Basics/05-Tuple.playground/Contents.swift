//
//  2-5 Swift 2.0基本类型之元组
//  05-Tuple.playground
//
//  Created by AlexZHOU on 16/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "05-Tuple"
print(str)


// 元组
var point = (5,2)
var httpResponse = (404, "Not Found")

// 元组的类型
let point2:(Int,Int) = (5,19)
let httpResponse2:(Int,String) = (200,"OK")

// 元组解包
let(x,y) = point2
x
y
let (statusCode,statusMessage) = httpResponse2
statusCode
statusMessage

// 元组分量
httpResponse2.0
httpResponse2.1

// 命名元组分量
let point3 = (x:3,y:4)
point3.x
point3.y
let point4: (x:Int , y:Int) = (3,4)
point4.x
point4.y

//使用_忽略元组分量
let loginResult = ( true , "liuyubobobo" )
let (isLoginSuccess,_) = loginResult
if isLoginSuccess {
    print("I am ture")
}
else{
    print("I am false")
}

// 元组的比较
point3 < point4
point < point2

let error1 = ("404","Not found")
let error2 = ("400","Bad Request")
error1 > error2
