//
//  UINavigationController+TopBarHeight.swift
//
//  Created by Daniel Ramos on 10/23/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation
import UIKit

@objc public extension UINavigationController {
    @objc func topBarHeight() -> CGFloat {
        var statusBarHeight: CGFloat = 0
        #if os(iOS)
        statusBarHeight = UIApplication.getForegroundWindowScene()?.statusBarManager?.statusBarFrame.height ?? 0
        #endif
        return self.navigationBar.frame.size.height + statusBarHeight
    }
}
