//
//  PairDetailContracts.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation
import UIKit

protocol PairDetailView {
    var presenter: PairDetailPresentation! { get set }
    func showDetails(forTicker ticker: Ticker)
}

protocol PairDetailPresentation: class {
    var view: PairDetailView? { get set }
    
    func viewDidLoad()
}

protocol PairDetailWireframe: class {
    static func assembleModule(_ ticker: Ticker ) -> UIViewController
}
