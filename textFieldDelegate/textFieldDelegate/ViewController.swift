//
//  ViewController.swift
//  textFieldDelegate
//
//  Created by Lucas Gomesx on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.placeholder = "Digite seu nome:"
        nameTextField.placeholder = "Digite seu email?"
    }


}

