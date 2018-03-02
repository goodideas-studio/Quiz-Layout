//
//  personalInfoVC.swift
//  Line-Settings
//
//  Created by Peichun Tsai on 2018/3/2.
//  Copyright © 2018年 Peichun Tsai. All rights reserved.
//

import UIKit

class personalInfoVC: UITableViewController {

    @IBOutlet weak var myNameLabel: UILabel!
    

    override func viewDidAppear(_ animated: Bool) {
        myNameLabel.text = Name.shared.nameField
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
