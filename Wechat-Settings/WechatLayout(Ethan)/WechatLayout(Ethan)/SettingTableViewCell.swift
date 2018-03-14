//
//  SettingTableViewCell.swift
//  WechatLayout(Ethan)
//
//  Created by EthanLin on 2018/3/14.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class SettingTableViewCell: UITableViewCell {

 
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
