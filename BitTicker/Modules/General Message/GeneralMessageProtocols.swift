//
//  GeneralMessageProtocols.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation

// View / Presenter
protocol GeneralMessageViewInjection : class {
    func load(title: String, message: String)
}

protocol GeneralMessagePresenterDelegate : class {
    func viewDidLoad()
}

