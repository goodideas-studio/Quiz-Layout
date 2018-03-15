//
//  NameViewController.swift
//  helloWeChat
//
//  Created by Morris on 2018/3/14.
//  Copyright © 2018年 Morris. All rights reserved.
//

import UIKit

class NameViewController: UIViewController{
    
    func barButtonState(){
        if nameTextField.text != ""{
            finishButtonColor.tintColor = .green
        }else{
            finishButtonColor.tintColor = .gray
        }
    }
    @IBAction func detectText(_ sender: UITextField) {
        barButtonState()
    }
    @IBOutlet weak var finishButtonColor: UIBarButtonItem!
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func finishButton(_ sender: UIBarButtonItem) {
        
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        if let inputText = nameTextField.text{
            if inputText == ""{
                let myAlert = UIAlertController(title: "未輸入", message: "姓名最少需輸入1個字", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
                myAlert.addAction(okAction)
                present(myAlert, animated: true, completion: nil)
            }else{
                navigationController?.popViewController(animated: true)
            }
        }
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.clearButtonMode = .whileEditing


        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let showName = UserDefaults.standard.object(forKey: "name")
        if let name = showName as? String{
            return nameTextField.text = name
            
        }
        barButtonState()
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
