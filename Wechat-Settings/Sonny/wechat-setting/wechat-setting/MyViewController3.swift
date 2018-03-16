//
//  MyViewController3.swift
//  wechat-setting
//
//  Created by Sonny on 2018/3/15.
//  Copyright © 2018年 SonnyCompany. All rights reserved.
//

import UIKit

class MyViewController3: UIViewController {

    
    @IBAction func textfield(_ sender: Any) { //textfield editing change
        
        if (textfield.text?.isEmpty)! {
            yesbtn.isEnabled = false
            yesbtn.tintColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.3)
        }else {
            yesbtn.isEnabled = true
            yesbtn.tintColor = UIColor(red: 0.439, green: 0.871, blue: 0.384, alpha: 1.0)
            
        }
    }
    @IBOutlet weak var textfield: UITextField!
    
    @IBOutlet weak var yesbtn: UIBarButtonItem!
    @IBAction func cancelbtn(_ sender: Any) {
        print("VC 3 : cancel btn")
        performSegue(withIdentifier: "backToPage2", sender: nil)
        
    }
   
        
    @IBAction func yesbtn(_ sender: Any) {
        
        UserDefaults.standard.set(textfield.text, forKey: "name")
        print(textfield.text)
        print("VC 3 : yes btn ")
        UserDefaults.standard.synchronize()
        performSegue(withIdentifier: "backToPage2", sender: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yesbtn.isEnabled = false
        print("VC 3 : viewDidLoad")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        print("VC 3 : viewWillAppear")

    }

    }
