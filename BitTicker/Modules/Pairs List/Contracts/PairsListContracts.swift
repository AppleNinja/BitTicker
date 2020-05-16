//
//  PairsListContracts.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation
import UIKit

protocol PairsListView {
    var presenter: PairsListPresentation! { get set }
    
    func showAlert(title: String, message: String)
}

protocol PairsListPresentation {
    var view: PairsListView? { get set }
    var interactor: PairsListInteractorInput? { get set }
    var router: PairsListWireframe! { get set }
    
    func didClickLogOutButton()
    func didSelectPair(_ ticker: Ticker)
}

// Presenter to Interactor
protocol PairsListInteractorInput {
    var presenter: PairsListInteractorOutput? { get set }
    
    func logOutUser()
}

// Interactor to Presenter
protocol PairsListInteractorOutput {
    func signOutSuccedd()
    func signOutFailed(message: String)
}

protocol PairsListWireframe: class {
    var viewController: UIViewController? { get set }
    
    static func assembleModule() -> UIViewController
    func presentPairDetailView(withTicker ticker: Ticker)
    func dissmisPairListViewOnLogOut()
}
