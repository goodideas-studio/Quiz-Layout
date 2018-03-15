//
//  SecondViewController.swift
//  Ells
//
//  Created by 唐嘉伶 on 14/03/2018.
//  Copyright © 2018 唐嘉伶. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

  @IBOutlet weak var IDLabel: UILabel!
  let userdefautls = UserDefaults.standard
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      self.navigationController?.navigationBar.tintColor = UIColor.white
      self.navigationController?.navigationBar.barTintColor = UIColor.darkGray
      
    }

  
  override func viewDidAppear(_ animated: Bool) {
    //userdefautls.synchronize()
    let name = String(describing: userdefautls.object(forKey: "name")!)
    
    IDLabel.text = name
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  @IBAction func goPersonalInfo(_ sender: UIButton) {
    
    performSegue(withIdentifier: "Go", sender: nil)
  }
  
  
  
}
