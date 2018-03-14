//
//  ThirdViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 14/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  var infoArray: [String] = ["名字","我的 WeChat ID", "QRCode", "更多"]
  
  @IBOutlet weak var myTableView: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    myTableView.dataSource = self
    myTableView.delegate = self
    
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return infoArray.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! MyCell
    cell.cellLabel.text = infoArray[indexPath.row]
    //cell.textLabel?.text = infoArray[indexPath.row]
    
    if indexPath == [0, 0] {
      cell.accessoryType = .disclosureIndicator
      
    }
    if indexPath == [0, 2] || indexPath == [0, 3] {
      cell.accessoryType = .disclosureIndicator
    }
    
    return cell
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
  

}
