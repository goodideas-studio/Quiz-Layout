
//
//  FinalViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 14/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

  let userdefaults = UserDefaults.standard
  
  @IBOutlet weak var doneEditingBtn: UIBarButtonItem!
  
  @IBOutlet weak var inputNameFd: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()

    self.navigationController?.navigationBar.tintColor = UIColor.white
    self.navigationController?.navigationBar.barTintColor = UIColor.darkGray
        // Do any additional setup after loading the view.
    
    doneEditingBtn.tintColor = UIColor(red: 62 / 255, green: 247 / 255, blue: 216 / 255, alpha: 0.88)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  }
    
  @IBAction func saveName(_ sender: UIBarButtonItem) {
    if inputNameFd.text?.count != 0 {
      userdefaults.set(inputNameFd.text, forKey: "name")
    } else {
      let alert = UIAlertController(title: "Boomer", message: "Please enter your name", preferredStyle: .alert)
      let alertCancel = UIAlertAction(title: "See", style: .cancel, handler: nil)
      alert.addAction(alertCancel)
      self.present(alert, animated: true, completion: nil)
    }
    userdefaults.synchronize()
  }

  @IBAction func cancelEditing(_ sender: Any) {

    navigationController?.popViewController(animated: true)
    print("leave")
    

  }
  
}
