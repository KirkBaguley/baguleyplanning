//
//  ViewController.swift
//  ProjectOne
//
//  Created by Kirk S. Baguley on 9/14/20.
//  Copyright © 2020 Kirk S. Baguley. All rights reserved.
//

import UIKit

class KidsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var textField: UITextField!
    @IBOutlet var TwoFourLabel: UILabel!
    @IBOutlet var EightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("KidsViewController loaded its view")
//        updateLabels()
    }
    
    @IBAction func answerFieldEditingFinished(_ textfield: UITextField){
        if let text = textField.text, !text.isEmpty{
            guard let number1a = Int(TwoFourLabel.text!) else { print("First number broke."); return}
            guard let number2a = Int(EightLabel.text!) else{ print("Second number broke."); return}
            guard let answer = Int(textField.text!) else { print("Answer broke"); return}
            if ((number1a + number2a) != answer){
                view.backgroundColor = UIColor.red
            }
            else {
                view.backgroundColor = UIColor.green
                DispatchQueue.main.asyncAfter(deadline: .now()+1.0){
                    self.view.backgroundColor = UIColor.opaqueSeparator
                    self.textField.text = ""
                    self.updateLabels()}
            }
        }
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }

    func updateLabels() {
        let number1 = Int.random(in: 0..<100)
        let number2 = Int.random(in: 0..<100)
        TwoFourLabel.text = "\(number1)"
        EightLabel.text = "\(number2)"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let existingTextHasDecimalSeparator = textField.text?.range(of: ".")
        let replacementTextHasDecimalSeparator = string.range(of: ".")
        
        if existingTextHasDecimalSeparator != nil,
            replacementTextHasDecimalSeparator != nil {
            return false
        } else{
            return true
        }
    }
}

