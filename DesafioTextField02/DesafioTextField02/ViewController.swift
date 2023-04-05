//
//  ViewController.swift
//  DesafioTextField02
//
//  Created by Lucas Gomesx on 23/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nomeTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var senhaTextField: UITextField!
    @IBOutlet weak var confirmarSenhaTextField: UITextField!
    @IBOutlet weak var cadastrarButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextFieldDelegate()
        cadastrarButton.isEnabled = false
    }
    
    private func configTextFieldDelegate(){
        nomeTextField.delegate = self
        emailTextField.delegate = self
        senhaTextField.delegate = self
        confirmarSenhaTextField.delegate = self
    }

    @IBAction func tappedLoginButton(_ sender: Any) {
        print("Cadastrado")
    }
    
    private func verificaCamposPreenchidos(){
        if nomeTextField.text?.isEmpty == false && emailTextField.text?.isEmpty == false && senhaTextField.text?.isEmpty == false && confirmarSenhaTextField.text?.isEmpty == false {
            cadastrarButton.isEnabled = true
        }else {
            cadastrarButton.isEnabled = false
        }
    }
    
    private func verificaCampo() {
        if nomeTextField.text?.isEmpty == false {
            nomeTextField.layer.borderColor = UIColor.lightGray.cgColor
        }else {
            nomeTextField.layer.borderColor = UIColor.red.cgColor
        }
        if emailTextField.text?.isEmpty == false{
            emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        }else {
            emailTextField.layer.borderColor = UIColor.red.cgColor
        }
    }
    
    private func verificaSenhas(){
        if senhaTextField.text == confirmarSenhaTextField.text {
            senhaTextField.layer.borderColor = UIColor.lightGray.cgColor
            confirmarSenhaTextField.layer.borderColor = UIColor.lightGray.cgColor
        }else if (senhaTextField.text != confirmarSenhaTextField.text){
            senhaTextField.layer.borderColor = UIColor.red.cgColor
            confirmarSenhaTextField.layer.borderColor = UIColor.red.cgColor
            cadastrarButton.isEnabled = false
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
        verificaCamposPreenchidos()
        verificaCampo()
        verificaSenhas()
    }
    
}
