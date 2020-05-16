//
//  PairDetailPresenter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation

class PairDetailPresenter: PairDetailPresentation {
    var view: PairDetailView?
    var wireframe: PairDetailWireframe!
    var ticker: Ticker!
    
    func viewDidLoad() {
        view?.showDetails(forTicker: ticker)
    }
}
