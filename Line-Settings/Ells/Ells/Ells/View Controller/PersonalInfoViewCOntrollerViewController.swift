//
//  PersonalInfoViewCOntrollerViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 02/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController {

  //let userdefault = UserDefaults.standard
  
  @IBOutlet weak var ProfilePic: UIImageView!
  @IBOutlet weak var nameToChange: UIButton!
  
  @IBOutlet weak var displayName: UILabel!
  override func viewDidLoad() {
        super.viewDidLoad()
    
      ProfilePic.layer.cornerRadius = 60
      nameToChange.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
  }
  
    
  @IBAction func changeNameBtn(_ sender: UIButton) {
    
    let changeNameVC: UIViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThridVC") as! ChangeNameViewController
    self.present(changeNameVC, animated: true, completion: nil)
  }

}

extension PersonalInfoViewController: UserDefaultDelegate {
  func updateName(userDefault: UserDefaults) {
    userDefault.synchronize()
    displayName.text = String(describing: userDefault.object(forKey: "UpdatedName"))
  }
  
}
