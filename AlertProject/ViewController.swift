//
//  ViewController.swift
//  AlertProject
//
//  Created by Tilbe Ünal on 22.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        
        if let nameText = nameTextField.text {
            if nameText.isEmpty {
                showAlert(message: "İsim boş olamaz")
            }
        }
        
        if let passwordText = passwordTextField.text {
            if passwordText.isEmpty {
                showAlert(message: "Parola boş olamaz")
            }
        }
        
        if let password2Text = password2TextField.text {
            if password2Text.isEmpty {
                showAlert(message: "Parola tekrarı boş olamaz")
            }
        }
        
        if let passwordText = passwordTextField.text,
           let password2Text = password2TextField.text {
            
            if passwordText != password2Text {
                showAlert(message: "Parola aynı değil")
            }
        }
    }
    
    
    func showAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        // let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { (UIAlertAction) in
            print("ok button tapped...")
        })
        
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}
