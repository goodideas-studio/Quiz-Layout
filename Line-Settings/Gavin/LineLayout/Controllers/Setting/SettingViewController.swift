//
//  ViewController.swift
//  LineLayout
//
//  Created by PinguMac on 2018/3/2.
//  Copyright © 2018年 PinguMac. All rights reserved.
//

import UIKit

class SettingViewController: UITableViewController {

  @IBOutlet weak var settingTableView: UITableView!

  let settingTableInfo = SettingTableInfo()
  var selectedIndexPath: IndexPath?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

