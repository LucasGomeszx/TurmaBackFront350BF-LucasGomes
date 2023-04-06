//
//  ViewController.swift
//  NavegationModal
//
//  Created by Lucas Gomesx on 06/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func tappedButton(_ sender: Any) {
        performSegue(withIdentifier: "Tela02", sender: nil)
    }
    
}

