//
//  SecondViewController.swift
//  WechatLayout(Ethan)
//
//  Created by EthanLin on 2018/3/14.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var userName:String?
    
    @IBOutlet weak var secondTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTableView.delegate = self
        secondTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userName = UserDefaults.standard.string(forKey: "userName")
        self.secondTableView.reloadData()
    }


}

extension SecondViewController:UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "userImageCell", for: indexPath) as! UserDetailTableViewCell
            cell.detailTextLabel?.text = "大頭貼"
            cell.userImage.image = UIImage(named: "s2")
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as! SettingTableViewCell
            cell.nameLabel.text = "名字"
            cell.descriptionLabel.text = userName
            cell.accessoryType = .disclosureIndicator
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as! SettingTableViewCell
            cell.nameLabel.text = "WeChat ID"
            cell.descriptionLabel.text = "slamdon"
            cell.accessoryType = .none
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "otherCell", for: indexPath)
            cell.textLabel?.text = "我的QR Code"
            cell.accessoryType = .disclosureIndicator
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "otherCell", for: indexPath)
            cell.textLabel?.text = "更多"
            cell.accessoryType = .disclosureIndicator
            return cell
        default:
            let cell = UITableViewCell()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 100
        }else{
            return 40
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1{
            performSegue(withIdentifier: "goView3", sender: nil)
        }
        
    }
}
