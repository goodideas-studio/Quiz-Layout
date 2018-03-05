//
//  editNameVC.swift
//  Line-Settings
//
//  Created by Peichun Tsai on 2018/3/2.
//  Copyright © 2018年 Peichun Tsai. All rights reserved.
//

import UIKit

class editNameVC: UIViewController, UITextFieldDelegate {
    

    var countText = 0
    
    @IBOutlet weak var editNameTextField: UITextField!
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBAction func saveName(_ sender: Any) {
        
        //回到上一頁
        self.navigationController?.popViewController(animated: true)
       
        //儲存輸入資訊
        UserDefaults.standard.set(editNameTextField.text!, forKey: "name")
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editNameTextField.borderStyle = .roundedRect
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
