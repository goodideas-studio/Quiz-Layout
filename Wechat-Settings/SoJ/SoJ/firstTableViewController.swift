//
//  firstTableViewController.swift
//  SoJ
//
//  Created by 高菘駿 on 2018/3/14.
//  Copyright © 2018年 SoJ. All rights reserved.
//

import UIKit

class firstTableViewController: UITableViewController {

    let dataArray = ["","","錢包","","收藏","我的相簿","優惠券","貼圖市集","","設定"]
    let iconArray = ["","","icon-pocket","","icon-collection","icon-album","icon-coupon","icon-market","","icon-setting"]
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
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
        return 10
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        switch indexPath.row {
//        case 0:
//            return 100
//        case 1, 3, 8:
//            return 20
//        default:
//            return 44
//        }
//    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let photoCell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath) as! PhotoCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstCell", for: indexPath)
        
        switch indexPath.row {
        case 0:
            photoCell.nameLabel.text = UserDefaults.standard.object(forKey: "name") as? String
            photoCell.IDLabel.text = "WeChat ID: Kao1109"
            photoCell.accessoryType = .disclosureIndicator
            return photoCell
        case 1, 3, 8:
            cell.backgroundColor = UIColor(red: 240/255, green: 239/255, blue: 245/255, alpha: 1)
            return cell
        default:
            cell.accessoryType = .disclosureIndicator
            cell.imageView?.image = UIImage(named: iconArray[indexPath.row])
            cell.textLabel?.text = dataArray[indexPath.row]
            return cell
        }

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "personalVC")
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
