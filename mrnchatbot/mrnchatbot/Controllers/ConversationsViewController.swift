//
//  ViewController.swift
//  mrnchatbot
//
//  Created by PREM KUMAR on 1/26/21.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let isLoggedIn = UserDefaults.standard.bool(forKey: "islogged_in")
        if !isLoggedIn {
            
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
            self.navigationController?.pushViewController(vc!, animated: true)

        }
        
    }

}

