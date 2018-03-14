
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func saveName(_ sender: UIBarButtonItem) {
    userdefaults.set(String(inputNameFd.text!), forKey: "name")
    
    userdefaults.synchronize()
  }
  
  

}
