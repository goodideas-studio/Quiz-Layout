//
//  personalInfoVC.swift
//  Line-Settings
//
//  Created by Peichun Tsai on 2018/3/2.
//  Copyright © 2018年 Peichun Tsai. All rights reserved.
//

import UIKit

class personalInfoVC: UITableViewController {

    @IBOutlet weak var myNameLabel: UILabel!
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        //存取資料
        let name = UserDefaults.standard.value(forKey: "name") as? String 
            myNameLabel.text = name
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.layer.cornerRadius = profileImageView.frame.size.width / 2
        profileImageView.clipsToBounds = true
        //更改separator顏色來解第一個cell有明顯邊線的問題
        self.tableView.separatorColor = self.tableView.backgroundColor

    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let headerView = view as! UITableViewHeaderFooterView
      //將 header 文字修改為非全大寫
        if section == 3 {
            headerView.textLabel?.text = "Status message"}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
}
