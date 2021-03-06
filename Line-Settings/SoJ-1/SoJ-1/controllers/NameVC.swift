//
//  NameVC.swift
//  SoJ-1
//
//  Created by 高菘駿 on 2018/3/2.
//  Copyright © 2018年 SoJ. All rights reserved.
//

import UIKit

class NameVC: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var keyinNameTextField: UITextField!
    @IBOutlet weak var characterLabel: UILabel!
    
    @IBAction func changeLength(_ sender: Any) {
        characterLabel.text =  "\(keyinNameTextField.text!.count)/20"
    }
    
    @IBAction func saveNameButton(_ sender: Any) {

        UserDefaults.standard.set(keyinNameTextField.text, forKey: "userName")
        UserDefaults.standard.synchronize()
        
//        if let nextVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PersonalVC") as? PersonalVC
//        { }
            navigationController?.popViewController(animated: true)
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if (textField.text?.count)! + string.count > 20 {
            return false
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let name = UserDefaults.standard.object(forKey: "userName") as? String {
            
//            keyinNameTextField.placeholder = name
            keyinNameTextField.text = name
            let characterNumber = name.count
            characterLabel.text =  "\(characterNumber)/20"
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    
}
