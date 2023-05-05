//
//  ViewController.swift
//  AlertProject
//
//  Created by oğuzhan selamoğlu on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    
    @IBOutlet weak var password2Text: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupClicked(_ sender: Any) {
      /*
        let alert = UIAlertController(title: "Hata", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
        alert.addAction(ok)
        
        self.present(alert, animated: true,completion: nil)
        */
        if usernameText.text == "" {
            showMessage(message: "Username not found")
            return
        }
        
        if passwordText.text == "" || password2Text.text == "" {
            showMessage(message: "password is empty")
            return
        }
        if passwordText.text != password2Text.text {
            showMessage(message: "password not match")
            return
        }
        
        showMessage(message: "success")
        
        
        
    }
    func showMessage(message: String) {
        let alert = UIAlertController(title: "Hata", message: message, preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default)
        alert.addAction(ok)
        
        self.present(alert, animated: true,completion: nil)
    }
}

