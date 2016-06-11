//
//  ViewController.swift
//  buildBasicUISwift
//
//  Created by Addiel on 10/06/16.
//  Copyright © 2016 Addiel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameNameLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        nameTextField.text = textField.text
    }
    
    @IBAction func setDefaultlabelText(sender: UIButton) {
        nameNameLabel.text = "default text"
    }

}

