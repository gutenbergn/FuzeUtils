//
//  UIViewController+StatusBarWindowLevel.swift
//  VHX
//
//  Created by Gutenberg Neto on 12/01/18.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

extension UIViewController {
    func bringWindowLevelToFront(hideStatusBar: Bool, shouldResetAfterDelay: TimeInterval? = nil) {
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
    }
}

