//
//  MainPresenter.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation

protocol MainView: AnyObject {
    
}

protocol LogoutAbleProtocol {
    func logout()
}

extension LogoutAbleProtocol {
    func logout() {
        
    }
}

class MainPresenter: LogoutAbleProtocol {
    private weak var view: MainView?
    private let authService: AuthServiceProtocol
    private let router: MainRouterProtocol
    
    init(view: MainView, router: MainRouterProtocol, authService: AuthServiceProtocol) {
        self.authService = authService
        self.router = router
    }
    
    func logout() {
        authService.logout()
        router.navigateToLogin()
    }
    
    deinit {
        print("==== MainPresenter ended! ====")
    }
}
