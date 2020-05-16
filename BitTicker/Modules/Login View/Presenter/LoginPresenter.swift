//
//  LoginPresenter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation


class LoginPresenter: LoginPresentation {
    
    // Reference to the View (weak to avoid retain cycle).
    weak var view: LoginView?
    
    // Reference to the Interactor's interface.
    var interactor: LoginInteractorInput?
    
    // Reference to the Router
    var router: LoginWireframe!
    
    //MARK: Button actions
    func didClickLoginButton(withEmail email: String, andPassword password: String) {
        showLoadingView()
        interactor?.loginUser(email: email, password: password)
    }
    
    func didClickRegisterButton(withEmail email: String, andPassword password: String) {
        showLoadingView()
        interactor?.registerUser(email: email, password: password)
    }

    
    func showPairsList() {
        self.router.presentPairsList()
    }
}

extension LoginPresenter: LoginInteractorOutput {
    func failed(error: String) {
        print(error)
        view?.showLoaderView(show: false)
        view?.showAlert(title: "Login Error", message: error)
    }
    
    func succeed() {
        print("Login/Register successful")
        view?.showLoaderView(show: false)
        router.presentPairsList()
    }
}

extension LoginPresenter {
    //MARK: Helper methods
    func showLoadingView() {
        view?.showLoaderView(show: true)
    }
}
