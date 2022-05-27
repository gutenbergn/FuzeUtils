//
//  UILabel+Fade.swift
//
//  Created by Gutenberg Neto on 28/06/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import UIKit

public extension UILabel {
    func setAttributedTextWithFade(attributedText: NSAttributedString, duration: TimeInterval = 0.25) {
        UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
            self.attributedText = attributedText
        }, completion: nil)
    }
    
    func setTextWithFade(text: String, duration: TimeInterval = 0.25) {
        UIView.transition(with: self, duration: duration, options: .transitionCrossDissolve, animations: {
            self.text = text
        }, completion: nil)
    }
}
