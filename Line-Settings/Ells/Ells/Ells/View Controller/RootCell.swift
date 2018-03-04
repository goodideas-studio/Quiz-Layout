//
//  RootCell.swift
//  Ells
//
//  Created by 唐嘉伶 on 02/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class RootCell: UITableViewCell {

 // @IBOutlet weak var myCell: RootCell!
  @IBOutlet weak var rootCellImage: UIImageView!
  
  @IBOutlet weak var rootCellLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
