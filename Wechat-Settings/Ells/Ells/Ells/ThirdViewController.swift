//
//  ThirdViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 14/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  let userdefualts = UserDefaults.standard
  
  var infoArray: [String] = [" ", "我的 WeChat ID", "QRCode", "更多"]
  
  @IBOutlet weak var myTableView: UITableView!
  
  //@IBOutlet weak var nameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myTableView.dataSource = self
    myTableView.delegate = self
    
    self.navigationController?.navigationBar.tintColor = UIColor.white
    self.navigationController?.navigationBar.barTintColor = UIColor.darkGray
    
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    
    
    myTableView.reloadData()
    
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell1: MyCell1 = tableView.dequeueReusableCell(withIdentifier: "Cell1") as! MyCell1
    let cell2: MyCell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2") as! MyCell2
    cell2.cellLabel.text = infoArray[indexPath.row ]
    //cell.textLabel?.text = infoArray[indexPath.row]
    
    let nameText = userdefualts.string(forKey: "name")
    cell1.rightSidelabel.setTitle(nameText, for: UIControlState.normal)
    
    
    switch indexPath {
    case [0, 0]:
      cell1.accessoryType = .disclosureIndicator
      cell1.textLabel?.text = "名字"
      return cell1
    case [0, 1] :
      cell2.accessoryType = .none
      return cell2
    case [0, 2]:
      cell2.accessoryType = .disclosureIndicator
      return cell2
    case [0, 3]:
      return cell2
    default:
      return cell2
    }
  }
  
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if indexPath == [0, 0] {
      performSegue(withIdentifier: "GoGo", sender: nil)

    }
  }
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 40
  }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func goToFinalVC(_ sender: Any) {
    
    performSegue(withIdentifier: "GoGo", sender: nil)
  }
  
  @IBAction func editName(_ sender: UIButton) {
    
    performSegue(withIdentifier: "GoGo", sender: nil)
  }
  
  
}
