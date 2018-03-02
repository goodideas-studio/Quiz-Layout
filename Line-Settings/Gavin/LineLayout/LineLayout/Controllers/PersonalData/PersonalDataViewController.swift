//
//  PersonalDataViewController.swift
//  LineLayout
//
//  Created by PinguMac on 2018/3/2.
//  Copyright © 2018年 PinguMac. All rights reserved.
//

import UIKit

class PersonalDataViewController: UIViewController {
  
  var viewTitle: String?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    print(viewTitle)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print(viewTitle)
  }
  
}
