//
//  ViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 14/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationController?.navigationBar.tintColor = UIColor.white
    self.navigationController?.navigationBar.barTintColor = UIColor.darkGray
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func goSecondVC(_ sender: UIBarButtonItem) {
    performSegue(withIdentifier: "GoSecondVC", sender: nil)
  }
  
}

