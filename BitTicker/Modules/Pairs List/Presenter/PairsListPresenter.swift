//
//  PairsListPresenter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation

class PairsListPresenter: PairsListPresentation {

    var view: PairsListView?
    var interactor: PairsListInteractorInput?
    var router: PairsListWireframe!
    
    func viewDidLoad() {
        
    }
    
    func didSelectPair(_ ticker: Ticker) {
        router.presentPairDetailView(withTicker: ticker)
    }
    
    func didClickLogOutButton() {
        interactor?.logOutUser()
    }
    
    
}

extension PairsListPresenter: PairsListInteractorOutput {
    func signOutSuccedd() {
         print("SignOut success")
        router?.dissmisPairListViewOnLogOut()
    }
    
    func signOutFailed(message: String) {
        print("SignOut error: \(message)")
        view?.showAlert(title: "SignOut Error", message: message)
    }
    
    
}
