//
//  SecondTableViewController.swift
//  SoJ
//
//  Created by 高菘駿 on 2018/3/14.
//  Copyright © 2018年 SoJ. All rights reserved.
//

import UIKit

class SecondTableViewController: UITableViewController {

    @IBOutlet var mytableview: UITableView!
    var name: String?
    
    override func viewWillAppear(_ animated: Bool) {
        name = UserDefaults.standard.object(forKey: "name") as? String
        mytableview.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 5
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let photoCell = tableView.dequeueReusableCell(withIdentifier: "photoCell2", for: indexPath)
        let personalCell = tableView.dequeueReusableCell(withIdentifier: "personalCell", for: indexPath) as! PersonalCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "normalCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            photoCell.accessoryType = .disclosureIndicator
            return photoCell
        case 1:
            personalCell.textLabel?.text = "名字"
            personalCell.nameLabel.text = name
            personalCell.accessoryType = .disclosureIndicator
            return personalCell
        case 2:
            personalCell.textLabel?.text = "WeChat ID"
            personalCell.nameLabel.text = "Kao1109"
            personalCell.nameLabel.textColor = .lightGray
            return personalCell
        case 3:
            cell.textLabel?.text = "我的QR Code"
            cell.accessoryType = .disclosureIndicator
            return cell
        case 4:
            cell.textLabel?.text = "更多"
            cell.accessoryType = .disclosureIndicator
            return cell
        default: break
        }

        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "nameVC") as! ViewController
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }

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
