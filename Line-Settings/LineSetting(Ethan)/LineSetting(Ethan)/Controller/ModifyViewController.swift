//
//  ModifyViewController.swift
//  LineSetting(Ethan)
//
//  Created by EthanLin on 2018/3/2.
//  Copyright © 2018年 EthanLin. All rights reserved.
//

import UIKit

class ModifyViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBAction func changeLength(_ sender: UITextField) {
        if let usefulTextCount = textField.text?.count{
            if usefulTextCount <= 20{
                textLengthLabel.text = "\(usefulTextCount)/20"
            }
            
        }
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let countOfWords = string.count + (textField.text?.count)! - range.length
        if countOfWords > 20{
            return false
        }else{
            return true
        }
    }
    
    
    var nameFromDetailView:String?
    
    @IBOutlet weak var textLengthLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func save(_ sender: UIButton) {
        UserDefaults.standard.setValue(textField.text, forKey: "newName")
        self.navigationController?.popViewController(animated: true)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.text = nameFromDetailView
        if let usefulTextCount = textField.text?.count{
            if usefulTextCount <= 20{
                textLengthLabel.text = "\(usefulTextCount)/20"
            }
        }
        
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
