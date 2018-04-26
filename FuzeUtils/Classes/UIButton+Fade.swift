//
//  UIButton+Fade.swift
//
//  Created by Daniel Ramos on 10/16/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIButton {
    public func setTitleWithFade(title: String, duration: TimeInterval = 0.25) {
        UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
            self.setTitle(title, for: .normal)
        }, completion: nil)
    }
}
