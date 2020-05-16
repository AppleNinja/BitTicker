//
//  PairsListRouter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

class PairsListRouter: PairsListWireframe {

    var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view  = R.storyboard.pairsListStoryboard.pairsListViewController()
        let presenter = PairsListPresenter()
        let interactor = PairsListInteractor()
        let router = PairsListRouter()
        
        view?.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        interactor.presenter = presenter
        
        router.viewController = view
        
        return view!
    }
    
    func presentPairDetailView(withTicker ticker: Ticker) {
        let pairDetailViewController = PairDetailRouter.assembleModule(ticker)
        viewController?.navigationController?.pushViewController(pairDetailViewController, animated: true)
    }

    func dissmisPairListViewOnLogOut() {
        viewController?.navigationController?.popViewController(animated: true)
    }
   
}
