//
//  GeneralMessagePresenter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation

/**
 * Enum to manage all the possible messages types
 * For now I'm using only NoInternetConnection type but it's possible to extend this in the future
 */
enum GeneralMessageType {
    case NoInternetConnection
}

class GeneralMessagePresenter {
    
    private weak var view: GeneralMessageViewInjection?
    private let type: GeneralMessageType
    
    init(view: GeneralMessageViewInjection, type: GeneralMessageType) {
        self.view = view
        self.type = type
    }
    
}

extension GeneralMessagePresenter: GeneralMessagePresenterDelegate {
    
    /**
     * View did load
     */
    func viewDidLoad() {
        switch type {
        case .NoInternetConnection:
            view?.load(title: NSLocalizedString("Network connection lost", comment: ""), message: NSLocalizedString("BitTicker needs to connect to the internet.\nCheck your connections and try again.", comment: ""))
            break
        }
    }
    
}
