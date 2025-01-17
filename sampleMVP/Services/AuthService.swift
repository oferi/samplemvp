//
//  AuthService.swift
//  sampleMVP
//
//  Created by Ofer Irani on 17/01/2025.
//

import Foundation

protocol AuthServiceProtocol {
    func isLoggedIn() -> Bool
    func login(username: String, password: String, success: @escaping (Bool, String)->())
    func logout()
}

class AuthService : AuthServiceProtocol {
    static let shared = AuthService()
    private init() {}
    var loggedIn = false
    
    func login(username: String, password: String, success: @escaping (Bool, String) -> ()) {
        if username == "ofer" {
            loggedIn = true
            success(true, "")
        } else {
            success(false, "bad user and password")
        }
    }
    
    func isLoggedIn() -> Bool {
        return loggedIn
    }
    
    func logout() {
        loggedIn = false
    }
}
