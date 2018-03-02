//
//  ViewController.swift
//  LineLayout
//
//  Created by PinguMac on 2018/3/2.
//  Copyright © 2018年 PinguMac. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

  @IBOutlet weak var settingTableView: UITableView!

  let settingTableInfo = SettingTableInfo()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    settingTableView.delegate = self
    settingTableView.dataSource = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

extension SettingViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    let selectedItem = settingTableInfo.info[indexPath.section][indexPath.row]
//
//    let destinationVC = PersonalDataViewController()
//    destinationVC.viewTitle = selectedItem
    self.performSegue(withIdentifier: "PersonalDataView",
                      sender: indexPath)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if (segue.identifier == "PersonalDataView") {
      let cell = sender as! UITableViewCell
      let indexPath = settingTableView.indexPath(for: cell)
      let destinationVC = segue.destination as! PersonalDataViewController
//      let selectedItem = sender as! SettingTableCell.
//      let destinationVC = PersonalDataViewController()
//      destinationVC.viewTitle = selectedItem
    }
  }
}

extension SettingViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = settingTableView.dequeueReusableCell(withIdentifier: "SettingTableCell", for: indexPath) as! SettingTableCell

    cell.accessoryType = .disclosureIndicator
    cell.settingTableCellLabel.text = settingTableInfo.info[indexPath.section][indexPath.row]
    return cell
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return settingTableInfo.info.count
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return settingTableInfo.info[section].count
  }
}

