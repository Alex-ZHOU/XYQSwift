//
//  CreatingRolesViewController.swift
//  XYQSwift
//
//  Created by AlexZHOU on 7/5/16.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import Foundation
import UIKit



class CreatingRolesViewController: UIViewController {
    
    
    
    @IBOutlet weak var mRenUISegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var mMoUISegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var mXianUISegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var mUITextField: UITextField!
    
    @IBOutlet weak var mUIImageViewSmall: UIImageView!
    
    @IBOutlet weak var mUISwitch: UISwitch!
    
    @IBOutlet weak var mUIImageViewBigger: UIImageView!
    
    var mSelect:Int!
    
    var mIsWeapon:Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        mIsWeapon = mUISwitch.isOn
        
        mSelect = 0
        
        mRenUISegmentedControl.selectedSegmentIndex = 0
        mMoUISegmentedControl.selectedSegmentIndex = -1
        mXianUISegmentedControl.selectedSegmentIndex = -1
        
        changeshow()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  
    
    @IBAction func mRenUISegmentedControl(_ sender: UISegmentedControl) {
        mSelect =  mRenUISegmentedControl.selectedSegmentIndex
        
        mMoUISegmentedControl.selectedSegmentIndex = -1
        mXianUISegmentedControl.selectedSegmentIndex = -1
        
        changeshow()
    }
    
    @IBAction func mMoUISegmentedControl(_ sender: UISegmentedControl) {
        mSelect =  mMoUISegmentedControl.selectedSegmentIndex
        
        mRenUISegmentedControl.selectedSegmentIndex = -1
        mXianUISegmentedControl.selectedSegmentIndex = -1

        changeshow()
    }
    
    @IBAction func mXianUISegmentedControl(_ sender: UISegmentedControl) {
        mSelect =  mXianUISegmentedControl.selectedSegmentIndex
        
        mRenUISegmentedControl.selectedSegmentIndex = -1
        mMoUISegmentedControl.selectedSegmentIndex = -1

        changeshow()
    }
    
    @IBAction func mUISwitch(_ sender: UISwitch) {
        mIsWeapon = sender.isOn
        changeshow()
    }
    
    
    @IBAction func mUIButton(_ sender: UIButton) {
        
        if (mUITextField.text != ""){
            let name = (mUITextField.text)
            print("\(mUITextField.text) \(mSelect)")
            let role:RolesModel = RolesModel(mName:name!, mSelect:mSelect,mTime:" sa")
            roles.append(role)
        }
    }
    
    
    func changeshow() -> Void {
        
        switch mSelect! {
        case 0:
            mUIImageViewSmall.image = UIImage(named: "jxk_icon")
            if mIsWeapon! {
                 mUIImageViewBigger.image = UIImage(named: "jxk_w")
            }
            else{
                mUIImageViewBigger.image = UIImage(named: "jxk")
            }
        case 2:
            mUIImageViewSmall.image = UIImage(named: "wmr_icon")
            if mIsWeapon! {
                mUIImageViewBigger.image = UIImage(named: "wmr_w")
            }
            else{
                mUIImageViewBigger.image = UIImage(named: "wmr")
            }
            

        default:
            print("nochange")
        }
        
        
    }
    
    
    
}
