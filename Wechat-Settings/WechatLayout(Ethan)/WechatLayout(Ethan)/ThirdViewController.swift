//
//  ThirdViewController.swift
//  WechatLayout(Ethan)
//
//  Created by EthanLin on 2018/3/14.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var barButton: UIBarButtonItem!
    
    @IBAction func barButtonAction(_ sender: UIBarButtonItem) {
            UserDefaults.standard.set(textField.text, forKey: "userName")
            self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func enterName(_ sender: UITextField) {
        
    }
    
    func barButtonState(){
        if textField.text == ""{
            barButton.isEnabled = false
            barButton.tintColor = .black
        }else{
            barButton.isEnabled = true
            barButton.tintColor = .green
        }
    }
    

    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.text = UserDefaults.standard.string(forKey: "userName")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
