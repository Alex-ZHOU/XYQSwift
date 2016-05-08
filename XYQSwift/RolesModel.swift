//
//  CreatingRolesModel.swift
//  XYQSwift
//
//  Created by AlexZHOU on 7/5/16.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

class RolesModel: NSObject {
    
    var mName:String
    
    var mSelect:Int
    
    var mTime:String
    
    init(mName:String, mSelect:Int,mTime:String) {
        self.mName = mName
        self.mSelect = mSelect
        self.mTime = mTime
    }

}
