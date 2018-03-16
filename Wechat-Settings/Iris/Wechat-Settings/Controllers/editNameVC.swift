//
//  editNameVC.swift
//  Wechat-Settings
//
//  Created by Peichun Tsai on 2018/3/15.
//  Copyright © 2018年 Peichun Tsai. All rights reserved.
//

import UIKit

class editNameVC: UIViewController {

    @IBOutlet weak var editTextField: UITextField!
    
    var userDefaults = UserDefaults.standard
    
    @IBAction func saveBtn(_ sender: Any) {
        
        
        if editTextField.text == "" {

            let alert = UIAlertController(title: "", message: "必須輸入名字，請重新填寫。", preferredStyle: .alert)
            let confirmBtn = UIAlertAction(title: "我知道了", style: .default, handler: { (alert) in
                return
            })
            alert.addAction(confirmBtn)
            present(alert, animated: true, completion: nil)
        }
        else if editTextField.text  == userDefaults.string(forKey: "Name"){
        }
        else {
            userDefaults.set(editTextField.text!, forKey: "Name")
            dismiss(animated: true, completion: nil)
        }
        
    }
    
    
    @IBAction func textFieldEditingChanged(_ sender: Any) {
        
        let defaults = userDefaults.string(forKey: "Name")
        if defaults != editTextField.text {
            navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.4392156863, green: 0.8705882353, blue: 0.3843137255, alpha: 1)

        }
        else {
           navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 0.2745098039, green: 0.4862745098, blue: 0.1568627451, alpha: 1)
        }
    }

    @IBOutlet weak var rightBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editTextField.borderStyle = .roundedRect
        
    }
    
    override func viewWillAppear(_ animated: Bool) {

        let nameTextField = userDefaults.string(forKey: "Name")
        editTextField.text = nameTextField
    
    }


    
    @IBAction func cancelBtn(_ sender: Any) {
        self.dismiss(animated: true)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
