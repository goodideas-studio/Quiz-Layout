//
//  NameViewController.swift
//  LineLayout
//
//  Created by PinguMac on 2018/3/2.
//  Copyright © 2018年 PinguMac. All rights reserved.
//

import UIKit

class NameViewController: UIViewController {
  
  @IBOutlet weak var userIDTextField: UITextField!
  @IBOutlet weak var charCounterLAbel: UILabel!
  
  var userDefaults: UserDefaults!
  var nameInUserDefaults: String?
  var characterCount = 0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.title = "姓名"
    userIDTextField.delegate = self
    userDefaults = UserDefaults.standard
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    guard let nameInUserDefaults = UserDefaults.standard.string(forKey: "name") else {
      userIDTextField.text = ""
      return
    }
    userIDTextField.text = nameInUserDefaults
    charCounterLAbel.text = "\(nameInUserDefaults.count)/20"
  }
  

  @IBAction func confirmBtn(_ sender: Any) {
    setUserDefault()
  }
  
  func setUserDefault() {
    userDefaults.set(userIDTextField.text, forKey: "name")
    navigationController?.popViewController(animated: true)
  }
  
  @IBAction func nameTextFieldAction(_ sender: Any) {
    characterCount = (userIDTextField.text?.count)!
    charCounterLAbel.text = "\(characterCount)/20"
  }
}

extension NameViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    setUserDefault()
    return true
  }
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    guard range.location > 19 else {
      return true
    }
    return false
  }
}
