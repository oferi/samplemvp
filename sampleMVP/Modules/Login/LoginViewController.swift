//
//  LoginViewController.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation
import UIKit

protocol LoginView: AnyObject {
    func showLoading()
    func hideLoading()
    func showError(_ message: String)
}

class LoginViewController: UIViewController, LoginView {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    var presenter: LoginPresenter!
    
    func showLoading() {
        print("showing loading!")
    }
    
    func hideLoading() {
        print("hide loading!")
    }
    
    func showError(_ message: String) {
        let alert = UIAlertController(title: "login failed", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func doLogin(_ sender: Any) {
        presenter.login(username: usernameText.text!, password: passwordText.text!)
    }
    
    deinit {
        print("==== LoginViewController ended! ====")
    }
}
