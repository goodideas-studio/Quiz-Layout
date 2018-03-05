//
//  editNameVC.swift
//  Line-Settings
//
//  Created by Peichun Tsai on 2018/3/2.
//  Copyright © 2018年 Peichun Tsai. All rights reserved.
//

import UIKit

class editNameVC: UIViewController, UITextFieldDelegate {
    

   
    
    @IBOutlet weak var editNameTextField: UITextField!
    @IBOutlet weak var counterLabel: UILabel!
    
  
   
    @IBAction func editLength(_ sender: Any) {
        if let textCount = editNameTextField.text?.count {
            if textCount <= 20 {
                counterLabel.text = "\(textCount)/20"
            }
        }
    }
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let counter = string.count + (editNameTextField.text?.count)! - range.length
       
        if counter > 20 {
            return false
        }
        else {
            return true
        }
    }
    
    @IBAction func saveName(_ sender: Any) {
        
        //回到上一頁
        self.navigationController?.popViewController(animated: true)
       
        //儲存輸入資訊
        UserDefaults.standard.set(editNameTextField.text!, forKey: "name")
        
    }

    override func viewDidAppear(_ animated: Bool) {
        let saveName = UserDefaults.standard.string(forKey: "name")
        editNameTextField.text = saveName
        if let textCount = editNameTextField.text?.count
        {
            counterLabel.text = "\(textCount)/20"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        editNameTextField.borderStyle = .roundedRect
       // editNameTextField.delegate = self
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
