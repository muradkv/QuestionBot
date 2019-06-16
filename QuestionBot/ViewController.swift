//
//  ViewController.swift
//  QuestionBot
//
//  Created by murad on 15/06/2019.
//  Copyright © 2019 murad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var responseLabel: UILabel!
    @IBOutlet var questionField: UITextField!
    @IBOutlet var askButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionField.becomeFirstResponder()
    }

    @IBAction func askButtonTapped(_ sender: Any) {
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func editingChanged(_ sender: UITextField) {
    }
}

