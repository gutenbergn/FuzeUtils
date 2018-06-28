//
//  UILabel+Fade.swift
//
//  Created by Gutenberg Neto on 28/06/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import UIKit

public extension UILabel {
    public func setTextWithFade(text: String, duration: TimeInterval = 0.25) {
        UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
            self.text = text
        }, completion: nil)
    }
}
