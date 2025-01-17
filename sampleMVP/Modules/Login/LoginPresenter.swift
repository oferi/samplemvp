//
//  LoginPresenter.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation

class LoginPresenter {
    private weak var view: LoginView?
    private let authService: AuthServiceProtocol
    private let router: LoginRouterProtocol
    
    init(view: LoginView, router: LoginRouterProtocol,authService: AuthService) {
        self.view = view
        self.authService = authService
        self.router = router
    }

    func login(username: String, password: String) {
        view?.showLoading()
        authService.login(username: username, password: password) { [weak self] success, error in
            guard let self = self else { return }
            view?.hideLoading()
            if success {
                router.navigateToMainApp()
            } else {
                view?.showError(error)
            }
        }
    }
    
    deinit {
        print("==== LoginPresenter ended! ====")
    }
}
