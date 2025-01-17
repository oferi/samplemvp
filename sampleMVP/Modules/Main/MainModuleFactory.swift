//
//  MainModule.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation
import UIKit

class MainModuleFactory {
    static func createModule(router: MainRouterProtocol) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let view = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
        let authService = AuthService.shared
        let presenter = MainPresenter(view: view, router: router, authService: authService)
        view.presenter = presenter
        return view
    }
}
