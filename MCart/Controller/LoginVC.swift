//
//  LoginVC.swift
//  MCart
//
//  Created by avi marathe on 22/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var userNameTxt: UITextField!
    
  
    @IBOutlet weak var passwordTxt: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func loginClicked(_ sender: Any) {
    }
    
    
    @IBAction func signupClicked(_ sender: Any) {
        performSegue(withIdentifier: TO_SIGN_UP, sender: nil)
    }
    
    
    
   
    
    
}
