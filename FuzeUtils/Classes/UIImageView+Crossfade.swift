//
//  UIImageView+Crossfade.swift
//
//  Created by Gutenberg Neto on 02/10/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIImageView {
    public func animateCrossfade(image: UIImage, duration: TimeInterval = 0.3) {
        UIView.transition(with: self, duration: TimeInterval(duration), options: .transitionCrossDissolve, animations: {
            self.image = image
        }, completion: nil)
    }
}
