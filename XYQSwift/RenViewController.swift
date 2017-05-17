//
//  CryViewController.swift
//  XYQSwift
//
//  Created by AlexZHOU on 7/5/16.
//  Copyright © 2016年 AlexZHOU. All rights reserved.  
//

import Foundation
import UIKit
import Social


class RenViewController: UIViewController {
    
    @IBOutlet weak var mImageView: UIImageView!
    
    @IBOutlet weak var mUINavigationItem: UINavigationItem!
    var mSelect:Int! = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mShareUIBarButtonItem(_ sender: UIBarButtonItem) {
        
        let con:SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeTwitter)
        
        con.setInitialText("hahahahah")
        
        con.add(mImageView.image)
        
        
        
        self.present(con,animated:true,completion:nil)
        
    }

    @IBAction func mUISegmentedControl(_ sender: UISegmentedControl) {
        mSelect = sender.selectedSegmentIndex
         mUINavigationItem.title = "Cry"
        switch mSelect {
        case 0:
            mImageView.image = UIImage(named: "jxk")
        case 1:
            mImageView.image = UIImage(named: "xys")
        case 2:
            mImageView.image = UIImage(named: "wmr")
        case 3:
            mImageView.image = UIImage(named: "fyn")
        case 4:
            mImageView.image = UIImage(named: "ynx")
        default:
            print("no change")
        }
        
    }
}
