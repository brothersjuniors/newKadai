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
        guard let firstValue = Int(firstTextField.text!) else { return }
        guard let secondValue = Int(secondTextfiled.text!) else { return }
        guard let thirdValue = Int(thirdTextField.text!) else { return }
        guard let fourthValue = Int(fourthTextfield.text!) else { return }
        guard let fifthValue = Int(fifthTextfield.text!) else { return }
        let result = firstValue + secondValue + thirdValue + fourthValue + fifthValue
        totalLabel.text = String(result)
    }
}
