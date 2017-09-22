//
//  SideMenuVC.swift
//  MCart
//
//  Created by avi marathe on 21/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class SideMenuVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width-100
    }

    
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGINVC, sender: nil)
    }
    
}
