//
//  PersonalVC.swift
//  SoJ-1
//
//  Created by 高菘駿 on 2018/3/2.
//  Copyright © 2018年 SoJ. All rights reserved.
//

import UIKit

class PersonalVC: UITableViewController {
    
    var userName: String?
    
    @IBOutlet var personalTableView: UITableView!
    
    override func viewDidAppear(_ animated: Bool) {
        if let name = UserDefaults.standard.object(forKey: "userName") as? String {
            userName = name
            
            personalTableView.reloadData()
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 6
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        switch section {
        case 0: return 1
        case 1: return 1
        case 2: return 1
        case 3: return 1
        case 4: return 2
        case 5: return 1
        default: return 0
        }
            
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 18
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 243/255, alpha: 1)
        let headerLabel = UILabel(frame: CGRect(x:13, y: 0, width: 300, height: 15))
        headerLabel.textColor = UIColor.gray
        headerLabel.font = UIFont.systemFont(ofSize: 12.0)
        
        switch  section {
        case 3:
            headerLabel.text = "狀態消息"
            headerView.addSubview(headerLabel)
            return headerView
        default:
            return headerView
        }
    
    }
    
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 18
    }
    
    override func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView()
        footerView.backgroundColor = UIColor(red: 239/255, green: 239/255, blue: 243/255, alpha: 1)
        
        let footerLabel = UILabel(frame: CGRect(x:13, y: 3, width: 300, height: 15))
        footerLabel.textColor = UIColor.gray
        footerLabel.font = UIFont.systemFont(ofSize: 12.0)
        
        switch section {
        case 1:
            footerLabel.text = "個人圖片變更完畢之後，將會自動投稿到動態消息上。"
            footerView.addSubview(footerLabel)
            return footerView
        case 4:
            footerLabel.text = "其他用戶可透過ID搜尋將您加入好友。"
            footerView.addSubview(footerLabel)
            return footerView
            
        default: return footerView
        }
        
        //return footerView
    }
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let photoCell = tableView.dequeueReusableCell(withIdentifier: "PhotoCell", for: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonalCell", for: indexPath) as! NormalCell
        let switchCell = tableView.dequeueReusableCell(withIdentifier: "SwitchCell", for: indexPath)
        
        switch indexPath {
        case [0,0]: return photoCell
        case [1,0]:
            switchCell.textLabel?.text = "自動投稿變更後的個人圖片"
            return switchCell
        case [2,0]:
            cell.textLabel?.text = "姓名"
            cell.personalRightTextLabel?.text = userName
            cell.accessoryType = .disclosureIndicator
            return cell
        case [3,0]:
            cell.textLabel?.text = "我要去創造那些老了以後可以說的故事！"
            cell.accessoryType = .disclosureIndicator
            return cell
        case [4,0]:
            cell.textLabel?.text = "ID"
            cell.personalRightTextLabel?.text = "slamdon"
            return cell
        case [4,1]:
            switchCell.textLabel?.text = "允許利用ID加入好友"
            return switchCell
        case [5,0]:
            cell.textLabel?.text = "顯示行動條碼"
            cell.accessoryType = .disclosureIndicator
            return cell
            
            
        default: return cell
        }
     }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath == [2, 0] {
            performSegue(withIdentifier: "KeyinNameSegue", sender: nil)
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

