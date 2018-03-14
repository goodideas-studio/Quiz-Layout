//
//  SecondViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 14/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  let userdefautls = UserDefaults.standard
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  override func viewDidAppear(_ animated: Bool) {
    userdefautls.synchronize()
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
