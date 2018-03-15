//
//  ViewController.swift
//  helloWeChat
//
//  Created by Morris on 2018/3/14.
//  Copyright © 2018年 Morris. All rights reserved.
//

import UIKit

class ViewController:UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    let firstSection = ["錢包"]
    let secondSection = ["收藏","我的相簿","優惠券","貼圖市集"]
    let thirdSection = ["設定"]
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
  
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }

  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }else if section == 1{
            return 1
        }else if section == 2{
            return 4
        }else{
            return 1
        }
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SpecialTableViewCell{
            
            if indexPath.section == 0{
                cell.profileImage.isHidden = false
                cell.nameLabel.text = "Morris"
                cell.idLabel.text = "WeChat ID : morrislwt"
                cell.nameLabel.isHidden = false
                cell.idLabel.isHidden = false
                cell.profileImage.layer.cornerRadius = 20
                cell.profileImage.clipsToBounds = true
                
            }else if indexPath.section == 1{
                cell.firstLabel.text = firstSection[indexPath.row]
                cell.iconImage.image = UIImage(named:firstSection[indexPath.row])
            }else if indexPath.section == 2{
                cell.firstLabel.text = secondSection[indexPath.row]
                cell.iconImage.image = UIImage (named:secondSection[indexPath.row])
            }else{
                cell.firstLabel.text = thirdSection[indexPath.row]
                cell.iconImage.image = UIImage (named:thirdSection[indexPath.row])
            }
            return cell
        }else{
            let cell = UITableViewCell()
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? CGFloat(120.0) : CGFloat(42.0)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0{
            performSegue(withIdentifier: "showview2", sender: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barStyle = .blackOpaque

    
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

