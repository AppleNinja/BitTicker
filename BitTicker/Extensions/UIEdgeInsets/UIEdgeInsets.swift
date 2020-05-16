//
//  UIEdgeInsets.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import Foundation
import UIKit

extension UIEdgeInsets {
    
    static var safeAreaInsets: UIEdgeInsets = {
        guard let window = (UIApplication.shared.delegate as? AppDelegate)?.window else { return UIEdgeInsets.zero }
        let insets: UIEdgeInsets
        if #available(iOS 11.0, *) {
            insets = window.safeAreaInsets
        } else {
            insets = UIEdgeInsets.zero
        }
        return insets
    }()
    
}
