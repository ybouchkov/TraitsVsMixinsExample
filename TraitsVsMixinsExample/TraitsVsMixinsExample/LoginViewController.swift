//
//  LoginViewController.swift
//  TraitsVsMixinsExample
//
//  Created by Yani Buchkov on 11/23/17.
//  Copyright © 2017 Mr Bouchkov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, ValidationFields {

    @IBOutlet weak var usernameTextField: UITextField?
    @IBOutlet weak var passwordTextField: UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func loginAction(_ sender: UIButton) {
        guard let usernameField = usernameTextField?.text, let passwordField = passwordTextField?.text else { return }
        if isUsernameValid(username: usernameField) && isPasswordValid(password:passwordField) {
            //  procceed login request gor example
            print("Correct credentials")
        } else {
            // show alert
            print("Not correct credentials")
        }
    }
}
