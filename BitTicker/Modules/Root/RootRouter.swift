//
//  RootRouter.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation
import UIKit

class RootRouter: RootWireframe {

    func presentLoginScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = LogiRouter.assembleModule()
    }
    
}
