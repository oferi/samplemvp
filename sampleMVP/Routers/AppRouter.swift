//
//  AppRouter.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation
import UIKit

protocol AppRouterProtocol {
    func startAppFlow()
}

class AppRouter: AppRouterProtocol {
    private let window: UIWindow
    private let authService: AuthService

    init(window: UIWindow, authService: AuthService) {
        self.window = window
        self.authService = authService
    }

    func startAppFlow() {
        if authService.isLoggedIn() {
            showMainFlow()
        } else {
            showLoginFlow()
        }
    }

    private func showLoginFlow() {
        let loginRouter = LoginRouter(window: window)
        loginRouter.start()
    }

    private func showMainFlow() {
        let mainRouter = MainRouter(window: window)
        mainRouter.start()
    }
    
    deinit {
        print("==== AppRouter ended! ====")
    }
}
