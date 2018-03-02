//
//  SettingVC.swift
//  SoJ-1
//
//  Created by 高菘駿 on 2018/3/2.
//  Copyright © 2018年 SoJ. All rights reserved.
//

import UIKit

class SettingVC: UITableViewController {

    let section0 = ["個人資料", "我的帳號", "隱私設定", "移動帳號設定", "Keep"]
    let section1 = ["貼圖", "主題", "我的錢包"]
    let section2 = ["提醒", "照片．影片", "聊天"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0: return 5
        case 1: return 3
        case 2: return 3
        default: return 0
        }
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 243/255, alpha: 1)
        
        switch section {
        case 0: return headerView
        case 1: return headerView
        case 2: return headerView
        default: return headerView
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 243/255, alpha: 1)
        switch section {
        case 0: return footerView
        case 1: return footerView
        case 2: return footerView
        default: return footerView
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath)// as! NormalCell
        
        switch indexPath.section{
        case 0:
            cell.imageView?.image = UIImage(named: section0[indexPath.row])
            cell.textLabel?.text = section0[indexPath.row]
            cell.accessoryType = .disclosureIndicator
            return cell
        case 1:
            cell.imageView?.image = UIImage(named: section1[indexPath.row])
            cell.textLabel?.text = section1[indexPath.row]
            cell.accessoryType = .disclosureIndicator
            return cell
        case 2:
            cell.imageView?.image = UIImage(named: section2[indexPath.row])
            cell.textLabel?.text = section2[indexPath.row]
            cell.accessoryType = .disclosureIndicator
            return cell
        default: return cell
            
        }
        
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath)
//        //if such cell exists and destination controller (the one to show) exists too..
//        if let destinationViewController = navigationController?.storyboard?.instantiateViewController(withIdentifier: "PersonalVC") as? PersonalVC {
//            //This is a bonus, I will be showing at destionation controller the same text of the cell from where it comes...
////            if let text = subjectCell.textLabel?.text {
////                destinationViewController.textToShow = text
////            } else {
////                destinationViewController.textToShow = "Tapped Cell's textLabel is empty"
////            }
//            //Then just push the controller into the view hierarchy
//            navigationController?.pushViewController(destinationViewController, animated: true)
//        }
//        
//    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        switch indexPath {
//        case [0, 0]:
//
//            navigationController?.pushViewController(PersonalVC, animated: true)
//        default:
//            break
//        }
//    }
    
//    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let destinationVC = segue.destination as! PersonalVC
//        let cell = sender as! UITableViewCell
//        destinationVC.navigationItem.title = cell.textLabel?.text
//    }

}
