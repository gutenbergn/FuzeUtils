//
//  UINavigationController+TopBarHeight.swift
//  VHX
//
//  Created by Daniel Ramos on 10/23/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

public extension UINavigationController {
    public func topBarHeight() -> CGFloat {
        return self.navigationBar.frame.size.height + UIApplication.shared.statusBarFrame.height
    }
}
