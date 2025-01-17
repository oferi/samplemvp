//
//  LoginModule.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation
import UIKit

class LoginModuleFactory {
    static func createModule(router: LoginRouterProtocol) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        let authService = AuthService.shared
        let presenter = LoginPresenter(view: view, router: router, authService: authService)
        view.presenter = presenter
        return view
    }
}



