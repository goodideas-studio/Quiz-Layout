//
//  ViewController.swift
//  SoJ
//
//  Created by 高菘駿 on 2018/3/14.
//  Copyright © 2018年 SoJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var textField: UITextField!
    @IBAction func editingTextField(_ sender: UITextField) {
        if textField.text!.count > 0{
            OKLabel.tintColor = UIColor(red: 112/255, green: 222/255, blue: 98/255, alpha: 1)
        } else {
            OKLabel.tintColor = UIColor(red: 60/255, green: 87/255, blue: 61/255, alpha: 1)
        }
    }

    @IBAction func cancleButton(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var OKLabel: UIBarButtonItem!
    @IBAction func OKButton(_ sender: Any) {
        if let count = textField.text?.count {
            if count > 0 {
            UserDefaults.standard.set(textField.text, forKey: "name")
            navigationController?.popViewController(animated: true)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textField.text = UserDefaults.standard.object(forKey: "name") as? String
        if textField.text!.count > 0{
            OKLabel.tintColor = UIColor(red: 112/255, green: 222/255, blue: 98/255, alpha: 1)
        } else {
            OKLabel.tintColor = UIColor(red: 60/255, green: 87/255, blue: 61/255, alpha: 1)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

