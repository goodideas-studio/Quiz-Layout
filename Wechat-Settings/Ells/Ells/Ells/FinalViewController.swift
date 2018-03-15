
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
  
  
  @IBOutlet weak var inputNameFd: UITextField!
  override func viewDidLoad() {
    super.viewDidLoad()

    self.navigationController?.navigationBar.tintColor = UIColor.white
    self.navigationController?.navigationBar.barTintColor = UIColor.darkGray
        // Do any additional setup after loading the view.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  }
    
  @IBAction func saveName(_ sender: UIBarButtonItem) {
    userdefaults.set(inputNameFd.text, forKey: "name")
    
    userdefaults.synchronize()
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let newName = String(describing: userdefaults.value(forKey: "name"))
    
    guard let identifier = segue.identifier
      else { return }

    guard let destination = segue.destination as? ThirdViewController else {
     fatalError()
    }
    
    self.present(destination, animated: true, completion: nil)
    
  }
  

}
