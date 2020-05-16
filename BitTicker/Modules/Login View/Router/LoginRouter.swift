//
//  LoginRouter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

class LogiRouter: LoginWireframe {
    
    weak var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view = R.storyboard.loginStoryboard.loginViewController()
        let presenter = LoginPresenter()
        let interactor = LoginInteractor()
        let router = LogiRouter()
        
        let navigation = UINavigationController(rootViewController:  view!)
        
        view?.presenter = presenter
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
        
        router.viewController = view
        
        return navigation
    }
    
    func presentPairsList() {
        let pairsListViewController = PairsListRouter.assembleModule()
        viewController?.navigationController?.pushViewController(pairsListViewController, animated: true)
    }

}
