//
//  4-7 Swift 2.0逻辑控制之guard 及代码风格初探
//  07-guard.playground
//
//  Created by AlexZHOU on 21/05/2017.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//
import UIKit

var str = "07-guard"
print(str)


func buy( money: Int , price: Int , capacity: Int , volume: Int){
    
    if money >= price{
        if capacity >= volume{
            print("I can buy it!")
            print("\(money-price) Yuan left.")
            print("\(capacity-volume) cubic meters left")
        }
        else{
            print("No enough capacity")
        }
    }
    else{
        print("Not enough money")
    }
}

func buy2( money: Int, price: Int, capacity: Int, volume: Int){
    
    guard  money >= price else {
        print("Not enough money")
        return
    }
    
    guard capacity >= volume  else {
        print("No enough capacity")
        return
    }
    
    print("I can buy it!")
    print("\(money-price) Yuan left.")
    print("\(capacity-volume) cubic meters left")
    
}

buy2(money: 100, price: 150, capacity: 100, volume: 80)
buy2(money: 100, price: 50, capacity: 100, volume: 180)
buy2(money: 100, price: 50, capacity: 100, volume: 80)
