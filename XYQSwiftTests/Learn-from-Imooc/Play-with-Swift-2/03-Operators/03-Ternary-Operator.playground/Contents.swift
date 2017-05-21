//
//  3-3 Swift 2.0运算符之三目运算符与变量初始化
//  03-Ternary-Operator.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "03-Ternary-Operator"
print(str)


var battery = 21
var batteryColor:UIColor
if battery >= 20 {
    batteryColor = UIColor.green
}else{
    batteryColor = UIColor.red
}
batteryColor

let batteryColor2 = battery <= 20 ? UIColor.red : UIColor.green
batteryColor2

var batteryColor3 = battery >= 20 ? UIColor.green : UIColor.red
batteryColor3
