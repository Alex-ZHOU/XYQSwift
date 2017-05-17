//
//  WebViewController.swift
//  XYQSwift
//
//  Created by AlexZHOU on 10/5/16.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import Foundation

import UIKit

class WebViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let  webView:UIWebView = UIWebView();
        webView.frame = self.view.bounds
        self.view.addSubview(webView)
        
        let url:URL;
        
        // hahah
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
