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
        roles = [RolesModel(mName:"Alex", mSelect:0,mTime:" sa"),
        RolesModel(mName:"CMK", mSelect:1,mTime:" sa"),
        RolesModel(mName:"crj", mSelect:2,mTime:" sa"),
        RolesModel(mName:"cccc", mSelect:0,mTime:" sa")]
        navigationItem.rightBarButtonItem = editButtonItem
        
   
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
            return roles.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
       let cell =  self.mTableView.dequeueReusableCell(withIdentifier: "mTableViewCell")! as UITableViewCell
        
        let role = roles[indexPath.row] as RolesModel
        
        
        let imageicon = cell.viewWithTag(233) as! UIImageView
        
        let name = cell.viewWithTag(234) as! UILabel
        
        switch role.mSelect {
        case 0:
            imageicon.image = UIImage(named: "jxk_icon")
        case 2:
            imageicon.image = UIImage(named: "wmr_icon")
        default:
            imageicon.image = UIImage(named: "jxk_icon")
        }
        
        
        
        name.text = role.mName
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle==UITableViewCellEditingStyle.delete {
            roles.remove(at: indexPath.row)
            //self.mTableView.reloadData()
            self.mTableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
        }
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        self.mTableView.setEditing(editing, animated: animated)
    }
    
    @IBAction func close(_ segue:UIStoryboardSegue){
        
        self.mTableView.reloadData()
        print("ReloadTableViewData")
    }

}
