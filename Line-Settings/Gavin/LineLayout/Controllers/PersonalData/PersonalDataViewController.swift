//
//  PersonalDataViewController.swift
//  LineLayout
//
//  Created by PinguMac on 2018/3/2.
//  Copyright © 2018年 PinguMac. All rights reserved.
//

import UIKit

class PersonalDataViewController: UITableViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  
//  let nameInfo = UserDefaults.standard.string(forKey: "name")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.title = "個人資料"
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    let nameInfo = UserDefaults.standard.string(forKey: "name")
    nameLabel.text = nameInfo
  }
}
