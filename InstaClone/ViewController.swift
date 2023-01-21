//
//  ViewController.swift
//  InstaClone
//
//  Created by Veysel Akbalık on 20.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var emailTF: UITextField!
    
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signInTapped(_ sender: Any) {
        performSegue(withIdentifier: "toFeedVC", sender: nil)
        
    }
    
    @IBAction func signUpTapped(_ sender: Any) {
    }
}

