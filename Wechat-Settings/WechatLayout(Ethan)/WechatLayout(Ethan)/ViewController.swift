//
//  ViewController.swift
//  WechatLayout(Ethan)
//
//  Created by EthanLin on 2018/3/14.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let section2Model = ["收藏","我的相簿","優惠券","貼圖市集"]
    let section2Images = ["icon-collection","icon-album","icon-coupon","icon-market"]
    
    var userName:String?
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        userName = UserDefaults.standard.string(forKey: "userName")
        self.tableView.reloadData()
    }


}
extension ViewController:UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 4
        case 3:
            return 1
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            let userCell = tableView.dequeueReusableCell(withIdentifier: "Usercell", for: indexPath)
            userCell.imageView?.image = #imageLiteral(resourceName: "s2")
            userCell.detailTextLabel?.text = "WeChatID: slamdon"
            userCell.textLabel?.text = userName
            return userCell
        }else if indexPath.section == 1{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "錢包"
            cell.imageView?.image = #imageLiteral(resourceName: "icon-pocket")
            return cell
        }else if indexPath.section == 2{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = section2Model[indexPath.row]
            cell.imageView?.image = UIImage(named: section2Images[indexPath.row])
            return cell
        }else if indexPath.section == 3{
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "設定"
            cell.imageView?.image = #imageLiteral(resourceName: "icon-setting")
            return cell
        }else{
            let cell = UITableViewCell()
            return cell
        }

    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            if indexPath.row == 0{
                performSegue(withIdentifier: "goView2", sender: nil)
            }
        }
    }
    
}

