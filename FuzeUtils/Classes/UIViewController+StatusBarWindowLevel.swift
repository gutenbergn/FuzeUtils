//
//  UIViewController+StatusBarWindowLevel.swift
//
//  Created by Gutenberg Neto on 12/01/18.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIViewController {
    public func bringWindowLevelToFront(hideStatusBar: Bool, shouldResetAfterDelay: TimeInterval? = nil) {
        #if os(iOS)
        guard let window = UIApplication.shared.delegate?.window else {
            return
        }
        
        window?.windowLevel = UIWindowLevelStatusBar + 1
        UIApplication.shared.isStatusBarHidden = hideStatusBar
        
        if let resetDelay = shouldResetAfterDelay {
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + resetDelay) {
                window?.windowLevel = UIWindowLevelNormal
                UIApplication.shared.isStatusBarHidden = !hideStatusBar
            }
        }
        #endif
    }
}

