//
//  UIView+Underline.swift
//
//  Created by Gutenberg Neto on 08/05/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult public func addUnderline(color: CGColor, height: CGFloat,
                                         offset: CGFloat = 0, width: CGFloat? = nil) -> CALayer {
        let underline = CALayer()
        underline.backgroundColor = color
        underline.frame = CGRect(x: 0, y: self.frame.size.height - height + offset,
                                 width: width ?? self.frame.size.width, height: height)
        self.layer.addSublayer(underline)
        
        return underline
    }
}
