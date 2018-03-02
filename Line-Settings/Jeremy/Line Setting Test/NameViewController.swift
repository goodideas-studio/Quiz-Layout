//
//  NameViewController.swift
//  Line Setting Test
//
//  Created by JeremyXue on 2018/3/2.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit



class NameViewController: UIViewController, UITextFieldDelegate {
    
    var textInput = 0
    
    
    // Outlet
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var textCount: UILabel!
   
    // Action
    @IBAction func storeName(_ sender: UIButton) {
        UserDefaults.standard.set(nameTextField.text, forKey: "userName")
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func editingText(_ sender: UITextField) {
        textInput = nameTextField.text?.characters.count ?? 0
        self.textCount.text = "\(textInput)/20"
    }
    
    
    // 限制字數
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        
        if textInput + string.characters.count - range.length > 20 {
            return false
        } else {
            return true
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let username = UserDefaults.standard.string(forKey: "userName") {
            nameTextField.text = username
            textInput = nameTextField.text?.characters.count ?? 0
            self.textCount.text = "\(textInput)/20"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
