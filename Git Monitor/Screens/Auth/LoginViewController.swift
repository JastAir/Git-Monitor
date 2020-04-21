//
//  LoginViewController.swift
//  Git Monitor
//
//  Created by Sergey Neikovich on 4/15/20.
//  Copyright © 2020 F Developers. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func signInOnClick(_ sender: Any) {
        present(ProfileViewController(), animated: true, completion: nil)
    }
}
