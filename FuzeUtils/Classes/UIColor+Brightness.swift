//
//  UIColor+Brightness.swift
//
//  Created by Daniel Ramos on 2/23/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation

// based on an answer to a Stack Overflow question:
// https://stackoverflow.com/questions/38435308/get-lighter-and-darker-color-variations-for-a-given-uicolor [GN]
public extension UIColor {
    public func darker(multiplier: CGFloat) -> UIColor {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        if self.getRed(&r, green: &g, blue: &b, alpha: &a) {
            return UIColor(red: max(r - multiplier, 0.0),
                           green: max(g - multiplier, 0.0),
                           blue: max(b - multiplier, 0.0), alpha: a)
        }
        
        return UIColor()
    }
    
    public func lighter(multiplier: CGFloat) -> UIColor {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        if self.getRed(&r, green: &g, blue: &b, alpha: &a) {
            return UIColor(red: min(r + multiplier, 1.0),
                           green: min(g + multiplier, 1.0),
                           blue: min(b + multiplier, 1.0), alpha: a)
        }
        
        return UIColor()
    }
}
