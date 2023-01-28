//
//  ViewController.swift
//  InstaClone
//
//  Created by Veysel Akbalık on 20.01.2023.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class ViewController: UIViewController {

    @IBOutlet var emailTF: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInTapped(_ sender: Any) {
        if emailTF.text != "" && passwordTF.text != "" {
            
            Auth.auth().signIn(withEmail: emailTF.text!, password: passwordTF.text!) { authdata, error in
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                }else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
            
        }else {
            makeAlert(title: "Error", message: "Username/Password?")
        }
        
        
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
        if emailTF.text != "" && passwordTF.text != "" {
            Auth.auth().createUser(withEmail: emailTF.text!, password: passwordTF.text!) { authData, error in
                
                if error != nil {
                    self.makeAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                }else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
            
        } else {
            makeAlert(title: "Error", message: "Username/Password?")
        }
    }
    func makeAlert(title: String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
}

