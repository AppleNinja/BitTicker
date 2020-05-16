//
//  PairDetailRouter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit

class PairDetailRouter: PairDetailWireframe {
    
    static func assembleModule(_ ticker: Ticker) -> UIViewController {
        let view = R.storyboard.pairDetailStoryboard.pairDetailiViewController()
        let presenter = PairDetailPresenter()
        
        view?.presenter = presenter
        
        presenter.view = view
        presenter.ticker = ticker
        
        return view!
    }

}

