//
//  MainRouter.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation
import UIKit

protocol MainRouterProtocol {
    func navigateToLogin()
}

class MainRouter: MainRouterProtocol {
    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let mainVC = MainModuleFactory.createModule(router: self)
        let navigationController = UINavigationController(rootViewController: mainVC)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    func navigateToLogin() {
        let loginRouter = LoginRouter(window: window)
        loginRouter.start()
    }
    
    deinit {
        print("==== MainRouter ended! ====")
    }
}
