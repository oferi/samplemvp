//
//  MainPresenter.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    func showEmoji(emoji: String)
}

protocol LogoutAbleProtocol {
    func logout()
}

class MainPresenter {
    private weak var view: MainViewProtocol?
    private let authService: AuthServiceProtocol
    private let router: MainRouterProtocol
    private let model: MainModel
    
    init(view: MainViewProtocol, router: MainRouterProtocol, authService: AuthServiceProtocol, model: MainModel) {
        self.view = view
        self.authService = authService
        self.router = router
        self.model = model
    }
    
    func viewDidLoad() {
        view?.showEmoji(emoji: model.emoji)
    }
    
    func imageTapped(item: String) {
        router.navigateToDetails(item: item)
    }
    
    func logout() {
        authService.logout()
        router.navigateToLogin()
    }
    
    deinit {
        print("==== MainPresenter ended! ====")
    }
}
