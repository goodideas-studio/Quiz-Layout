//
//  PersonalInfoViewCOntrollerViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 02/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class PersonalInfoViewController: UIViewController {

  let userdefault = UserDefaults.standard
  
  @IBOutlet weak var ProfilePic: UIImageView!
  @IBOutlet weak var nameToChange: UIButton!
  
  @IBOutlet weak var displayName: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    //self.ProfilePic.layer.cornerRadius = self.ProfilePic.frame.size.width / 2
    self.ProfilePic.clipsToBounds = true
      ProfilePic.layer.cornerRadius = 60
      nameToChange.layer.cornerRadius = 10
    keepName()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      
  }
  
  override func viewWillAppear(_ animated: Bool) {
    func updateName(noNeed: String) {
      userdefault.synchronize()
      print(userdefault.data(forKey: "UpdatedName"))
      displayName.text = userdefault.value(forKey: "UpdatedName") as? String
      
    }
  }
  func keepName() {
    let result = userdefault.value(forKey: "UpdatedName") as? String
    print(result)
    displayName.text = result!
  }
  @IBAction func changeNameBtn(_ sender: UIButton) {
    
    let changeNameVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThridVC") as! ChangeNameViewController
    changeNameVC.delegate = self
    self.present(changeNameVC, animated: true, completion: nil)
  }
}


extension PersonalInfoViewController: UserDefaultDelegate {
  
 
    func updateName(noNeed: String) {
//      userdefault.synchronize()
      let result = userdefault.value(forKey: "UpdatedName") as? String
      print(result)
      displayName.text = result!
      //  String(describing: userdefault.object(forKey: "UpdatedName")!)
      
    }
  
}
