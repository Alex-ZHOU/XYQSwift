//
//  3-4 Swift 2.0运算符之范围运算符和for-in
//  04-Range-Operator.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

var str = "04-Range-Operator"
print(str)


// [0,10]
for index in 0...10 {
    index
}

// [0,10)
for index in 0..<10 {
    index
}

let courses = ["慕课网2048私人定制","CSS3 3D特效","玩儿转swift","绚丽的倒计时效果 Canvas绘图与动画基础","Canvas绘图详解","学写一个字","Canvas玩儿转图像处理","Canvas玩儿转红包照片","玩儿转swift 2.0"]
for i in 0..<courses.count {
    print(courses[i])
}
