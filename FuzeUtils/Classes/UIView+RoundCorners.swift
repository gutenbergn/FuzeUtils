//
//  UIView+RoundCorners.swift
//
//  Created by Gutenberg Neto on 14/09/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIView {
    public func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}
