//
//  ViewController.swift
//  TextFieldDesafio01
//
//  Created by Lucas Gomesx on 22/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var enderecoTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField()
        loginButton.isEnabled = false
    }

    private func configTextField() {
        nomeTextField.delegate = self
        nomeTextField.placeholder = "Digite seu nome:"
        enderecoTextField.delegate = self
        enderecoTextField.placeholder = "Digite seu email:"
        senhaTextField.delegate = self
        senhaTextField.placeholder = "Digite sua senha:"
        senhaTextField.isSecureTextEntry = true
    }

    @IBAction func tappedLoginButton(_ sender: Any) {
        print("Cadastrado")
    }
    
    private func verificaTextFeild(textField: UITextField) {
        if textField.hasText {
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }else {
            textField.layer.borderColor = UIColor.red.cgColor
            loginButton.isEnabled = false
        }
        
        if (nomeTextField.hasText && enderecoTextField.hasText && senhaTextField.hasText ) {
            loginButton.isEnabled = true
        }
    }
    
}

//MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.blue.cgColor
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        verificaTextFeild(textField: textField)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
    
}
