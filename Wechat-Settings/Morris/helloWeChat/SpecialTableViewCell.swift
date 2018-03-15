//
//  SpecialTableViewCell.swift
//  helloWeChat
//
//  Created by Morris on 2018/3/14.
//  Copyright © 2018年 Morris. All rights reserved.
//

import UIKit

class SpecialTableViewCell: UITableViewCell {
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var secondText: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var profileImage2: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
