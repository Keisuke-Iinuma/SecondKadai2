//
//  ViewController.swift
//  SecondKadai2
//
//  Created by 飯沼圭哉 on 2020/05/29.
//  Copyright © 2020 keisuke.iinuma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField.delegate = self
        
    }
    
//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//            return true
//    }

    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
            return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.view.endEditing(true)
            return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textField.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        
        resultViewController.sendText = self.textField.text!

    }

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
}

