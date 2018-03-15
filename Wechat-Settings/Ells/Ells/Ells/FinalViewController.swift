
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
    
    doneEditingBtn.tintColor = UIColor(red: 22 / 255, green: 247 / 255, blue: 216 / 255, alpha: 0.88)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
  }
    
  @IBAction func saveName(_ sender: UIBarButtonItem) {
    userdefaults.set(inputNameFd.text, forKey: "name")
    
    userdefaults.synchronize()
  }
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    let newName = String(describing: userdefaults.value(forKey: "name"))
//
//    guard let identifier = segue.identifier
//      else { return }
//    guard let destination = segue.destination as? ThirdViewController else {
//     fatalError()
//    }
//    self.present(destination, animated: true, completion: nil)
//  }
//
  @IBAction func cancelEditing(_ sender: Any) {
    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      guard segue.identifier != nil
        else { return }
      guard let destination = segue.destination as? ThirdViewController else {
        fatalError()
      }
      print(destination)
    
      self.dismiss(animated: true) {
        self.present(destination, animated: true, completion: nil)
      }
    }
    
    print("leave")
    

  }
  
}
