//
//  LoginRouter.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation
import UIKit

protocol LoginRouterProtocol {
    func navigateToMainApp()
}

class LoginRouter: LoginRouterProtocol {
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let loginVC = LoginModuleFactory.createModule(router: self)
        let navigationController = UINavigationController(rootViewController: loginVC)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }

    func navigateToMainApp() {
        let mainRouter = MainRouter(window: window)
        mainRouter.start()
    }
    
    deinit {
        print("==== LoginRouter ended! ====")
    }
}

