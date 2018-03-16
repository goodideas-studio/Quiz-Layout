//
//  personalInfoTableVC.swift
//  Wechat-Settings
//
//  Created by Peichun Tsai on 2018/3/15.
//  Copyright © 2018年 Peichun Tsai. All rights reserved.
//

import UIKit

class personalInfoTableVC: UITableViewController {

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let name = UserDefaults.standard.string(forKey: "Name" )
        nameLabel.text = name
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
    
  
}
