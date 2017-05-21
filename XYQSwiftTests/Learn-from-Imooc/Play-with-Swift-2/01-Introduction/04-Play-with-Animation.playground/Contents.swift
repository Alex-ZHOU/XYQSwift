//
//  04-Play-with-Animation.playground
//
//  Created by AlexZHOU on 16/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit
import PlaygroundSupport

var str = "04-Play-with-Animation"
print(str)


let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))

let circle = UIView(frame:CGRect(x:0,y:0,width:50,height:50))
circle.center = containerView.center
circle.layer.cornerRadius = 25.0

let startingColor = UIColor(red:(253.0/255.0),green:(159.0/255.0),blue:(47.0/255.0),alpha:1.0)

circle.backgroundColor = startingColor
containerView.addSubview(circle)

let rectangle = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
rectangle.center = containerView.center
rectangle.layer.cornerRadius = 5.0
rectangle.backgroundColor = UIColor.white
containerView.addSubview(rectangle)

UIView.animate(withDuration: 2.0, animations: {() -> Void in
    let endingColor = UIColor(red: (255.0/255.0), green: (61.0/255.0), blue: (24.0/255.0), alpha: 1.0)
    circle.backgroundColor = endingColor
    
    let scaleTransform = CGAffineTransform(scaleX:5.0,y:5.0)
    circle.transform = scaleTransform
    
    let rotationTransform = CGAffineTransform.init(rotationAngle:3.14)
    rectangle.transform = rotationTransform
})


PlaygroundPage.current.liveView = containerView

