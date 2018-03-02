//
//  editNameVC.swift
//  Line-Settings
//
//  Created by Peichun Tsai on 2018/3/2.
//  Copyright © 2018年 Peichun Tsai. All rights reserved.
//

import UIKit

class editNameVC: UIViewController {

    @IBOutlet weak var editNameTextField: UITextField!
    
   

    
    @IBAction func saveName(_ sender: Any) {
        
        Name.shared.nameField = (editNameTextField.text)!

        //回到上一頁
    self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
