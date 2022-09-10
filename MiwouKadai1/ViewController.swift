//
//  ViewController.swift
//  MiwouKadai1
//
//  Created by 近江伸一 on 2022/09/10.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextfiled: UITextField!
    @IBOutlet weak var thirdTextField: UITextField!
    @IBOutlet weak var fourthTextfield: UITextField!
    @IBOutlet weak var fifthTextfield: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
   override func viewDidLoad() {
        super.viewDidLoad()
        firstTextField.delegate = self
        secondTextfiled.delegate = self
        thirdTextField.delegate = self
        fourthTextfield.delegate = self
        fifthTextfield.delegate = self
   }
    @IBAction func culkButton(_ sender: UIButton) {
        guard let firstTextFieldInt = Int(firstTextField.text!) else { return }
        guard let secondTextFieldInt = Int(secondTextfiled.text!) else { return }
        guard let thirdTextFieldInt = Int(thirdTextField.text!) else { return }
        guard let fourthTextfieldInt = Int(fourthTextfield.text!) else { return }
        guard let fifthTextfieldInt = Int(fifthTextfield.text!) else { return }
        let result = firstTextFieldInt + secondTextFieldInt + thirdTextFieldInt + fourthTextfieldInt + fifthTextfieldInt
        totalLabel.text = String(result)
}
}
