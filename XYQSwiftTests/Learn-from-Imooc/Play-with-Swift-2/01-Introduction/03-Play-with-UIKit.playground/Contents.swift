//
//  03-Play-with-UIKit.playground
//
//  Created by AlexZHOU on 16/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit
import XCPlayground
import PlaygroundSupport

var str = "03-Play-with-UIKit"
print(str)


let view = UIView(frame: CGRect(x:0,y:0,width:320,height:480))
view.backgroundColor = UIColor.orange

let button = UIButton(frame:CGRect(x:0,y:0,width:100,height:50))
button.center = view.center

// Playground中的UI控件支持交互。简单为button在Highlighted的状态下设置另外一个颜色，就可以点击看到效果了
button.setTitleColor(UIColor.white, for:UIControlState.normal)
button.setTitleColor(UIColor.blue, for:UIControlState.highlighted)
button.setTitle("Click Me :)", for:UIControlState.normal)

view.addSubview(button)


// 导入XCPlayground，但这句话过时了
//XCPlaygroundPage.currentPage.liveView = view
// 新写法，导入PlaygroundSupport
PlaygroundPage.current.liveView = view