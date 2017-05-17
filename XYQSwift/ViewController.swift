//
//  ViewController.swift
//  XYQSwift
//
//  Created by AlexZHOU on 7/5/16.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func close(_ segue:UIStoryboardSegue){
        print("ReturnMain")
    }
    
}

