//
//  NameViewController.swift
//  Line Setting Test
//
//  Created by JeremyXue on 2018/3/2.
//  Copyright © 2018年 JeremyXue. All rights reserved.
//

import UIKit

protocol GetName {
    func receive(name:String)
}

class NameViewController: UIViewController {
    
    var nameDelegate:GetName?
    
    // 元件 Outlet
    @IBOutlet weak var nameTextField: UITextField!
    
    // 元件 Action
    @IBAction func storeName(_ sender: UIButton) {
        nameDelegate?.receive(name: nameTextField.text!)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    // 額外功能 Outlet
    @IBOutlet weak var textCount: UILabel!
    @IBAction func editingText(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
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
