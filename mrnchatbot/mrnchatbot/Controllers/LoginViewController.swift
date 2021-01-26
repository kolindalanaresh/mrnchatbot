//
//  LoginViewController.swift
//  mrnchatbot
//
//  Created by PREM KUMAR on 1/26/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Log In"
        self.view.backgroundColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Register", style: .done, target: self, action: #selector(didTapRegister))
    }
    
    @objc private func didTapRegister() {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func onClickSubmit(_ sender: Any) {
    }
    
}
