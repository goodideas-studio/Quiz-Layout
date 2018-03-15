//
//  ProfileController.swift
//  helloWeChat
//
//  Created by Morris on 2018/3/14.
//  Copyright © 2018年 Morris. All rights reserved.
//

import UIKit

class ProfileController: UITableViewController {
    var infoFromView3:String?
    let string1 = ["大頭貼"]
    let string2 = ["名字"]
    let string3 = ["WeChat ID"]
    let string4 = ["我的QR Code"]
    let string5 = ["更多"]
    

    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else if section == 1{
            return string1.count
        }else if section == 2{
            return string2.count
        }else if section == 3{
            return string3.count
        }else if section == 4{
            return string4.count
        }else{
            return string5.count
        }
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SpecialTableViewCell{
            
            if indexPath.section == 0{
                cell.secondLabel.text = string1[indexPath.row]
                cell.profileImage2.isHidden = false
                cell.profileImage2.layer.cornerRadius = 20
                cell.profileImage2.clipsToBounds = true
            }else if indexPath.section == 1{
                cell.secondLabel.text = string2[indexPath.row]
                infoFromView3 = UserDefaults.standard.object(forKey: "name") as? String
                if let myName = infoFromView3{
                    cell.secondText.text = myName
                }
                cell.secondText.isHidden = false
                cell.accessoryType = .none
            }else if indexPath.section == 2{
                cell.secondLabel.text = string3[indexPath.row]
                cell.secondText.text = "morrislwt"
                cell.secondText.isHidden = false
            }else if indexPath.section == 3{
                    cell.secondLabel.text = string4[indexPath.row]
            }else{
                    cell.secondLabel.text = string5[indexPath.row]
            }
            return cell
        }else{
            let cell = UITableViewCell()
            return cell
        }
    }
    
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? CGFloat(120.0) : CGFloat(42.0)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1{
            performSegue(withIdentifier: "showview3", sender: nil)
        }
    }
        
        
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source


    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
