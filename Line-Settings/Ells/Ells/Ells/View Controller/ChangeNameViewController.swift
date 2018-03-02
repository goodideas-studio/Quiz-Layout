//
//  ChangeNameViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 02/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class ChangeNameViewController: UIViewController {

  @IBOutlet weak var saveBtn: UIButton!
  @IBOutlet weak var inputName: UITextField!
  let userdefualt = UserDefaults.standard
  var delegate: UserDefaultDelegate?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
    }
  
  @IBAction func saveNewName(_ sender: UIButton) {
    if inputName.text! != " " {
      userdefualt.set(inputName.text!, forKey: "UpdatedName")
      userdefualt.synchronize()
      print(userdefualt.object(forKey: "UpdatedName")! )
      
    } else {
      
    }
//    let personalInfoVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondVC") as! PersonalInfoViewController s
    delegate?.updateName(noNeed: inputName.text!)
    dismiss(animated: true, completion: nil)
//    self.present(personalInfoVC, animated: true, completion: nil)

  }
  
  

}
