//
//  TableViewController.swift
//  XYQSwift
//
//  Created by AlexZHOU on 8/5/16.
//  Copyright © 2016年 AlexZHOU. All rights reserved.
//

import Foundation
import UIKit

var roles:[RolesModel] = []

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var mTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        roles = [RolesModel(mName:"Alex", mSelect:2,mTime:" sa"),
        RolesModel(mName:"CMK", mSelect:2,mTime:" sa"),
        RolesModel(mName:"aaa", mSelect:2,mTime:" sa"),
        RolesModel(mName:"cccc", mSelect:2,mTime:" sa")]
        navigationItem.rightBarButtonItem = editButtonItem()
        
   
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
            return roles.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
       let cell =  self.mTableView.dequeueReusableCellWithIdentifier("mTableViewCell11")! as UITableViewCell
        
        let role = roles[indexPath.row] as RolesModel
        
        
        let imageicon = cell.viewWithTag(233) as! UIImageView
        
        let name = cell.viewWithTag(234) as! UILabel
        
        
        imageicon.image = UIImage(named: "jxk")
        
        name.text = role.mName
        
        return cell
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if editingStyle==UITableViewCellEditingStyle.Delete {
            roles.removeAtIndex(indexPath.row)
            //self.mTableView.reloadData()
            self.mTableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    override func setEditing(editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        self.mTableView.setEditing(editing, animated: animated)
    }

}