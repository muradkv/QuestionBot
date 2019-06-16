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
    
    let questionAnswerer = MyQuestionAnswerer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionField.becomeFirstResponder()
    }

    func respondToQuestion(_ question: String) {
        let answer = questionAnswerer.responseTo(question: question)
        
        displayAnswerTextOnScreen(answer)
        questionField.placeholder = "Ask another question"
        questionField.text = nil
        askButton.isEnabled = false
    }
    
    @IBAction func askButtonTapped(_ sender: Any) {
        guard questionField.text != nil else {
            return
        }
        questionField.resignFirstResponder()
    }
    
    func displayAnswerTextOnScreen(_ answer: String) {
        responseLabel.text = answer
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text else {
            return
        }
        
        respondToQuestion(text)
    }
    
    @IBAction func editingChanged(_ textField: UITextField) {
        guard let text = textField.text else {
            askButton.isEnabled = false
            return
        }
        
        askButton.isEnabled = !text.isEmpty
    }
}

