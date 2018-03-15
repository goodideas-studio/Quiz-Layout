//
//  ViewController.swift
//  Hugh
//
//  Created by Andy Tsai on 14/03/2018.
//  Copyright © 2018 Andy Tsai. All rights reserved.
//

import UIKit

struct Cell {
    var image: UIImage
    var title: String
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let cells = [
        [],
        [Cell(image: #imageLiteral(resourceName: "icon-pocket"), title: "錢包")],
        [
            Cell(image: #imageLiteral(resourceName: "icon-collection"), title: "收藏"),
            Cell(image: #imageLiteral(resourceName: "icon-album"), title: "我的相簿"),
            Cell(image: #imageLiteral(resourceName: "icon-coupon"), title: "優惠卷"),
            Cell(image: #imageLiteral(resourceName: "icon-market"), title: "貼圖市集")
        ],
        [Cell(image: #imageLiteral(resourceName: "icon-setting"), title: "設定")]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "我的設定"
        
        tableView.register(UINib(nibName: "LeftAvatarTableViewCell", bundle: nil), forCellReuseIdentifier: "LeftAvatarTableViewCell")
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch (indexPath.section, indexPath.row) {
        case (0,0):
            return 90
        default:
            return 44
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch (section) {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 4
        case 3:
            return 1
        default:
            fatalError()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch (indexPath.section, indexPath.row) {
        case (0, 0):
            let cell = tableView.dequeueReusableCell(withIdentifier: "LeftAvatarTableViewCell") as! LeftAvatarTableViewCell
            cell.nameLabel.text = UserDefaults.standard.string(forKey: "name") ?? "Hugh"
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
            cell.leftImageView.image = cells[indexPath.section][indexPath.row].image
            cell.titleLabel.text = cells[indexPath.section][indexPath.row].title
            cell.titleLabel.sizeToFit()
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard nil != tableView.cellForRow(at: indexPath) as? LeftAvatarTableViewCell else {
            return
        }
        
        navigationController?.pushViewController(ProfileViewController(), animated: true)
    }
}

