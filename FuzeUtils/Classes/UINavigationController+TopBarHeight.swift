//
//  UINavigationController+TopBarHeight.swift
//
//  Created by Daniel Ramos on 10/23/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

@objc public extension UINavigationController {
    @objc public func topBarHeight() -> CGFloat {
        var statusBarHeight: CGFloat = 0
        #if os(iOS)
        statusBarHeight = UIApplication.shared.statusBarFrame.height
        #endif
        return self.navigationBar.frame.size.height + statusBarHeight
    }
}
