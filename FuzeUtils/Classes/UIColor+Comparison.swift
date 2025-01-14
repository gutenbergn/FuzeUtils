//
//  UIColor+Brightness.swift
//
//  Created by Daniel Ramos on 2/23/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    func isEqualComponentValues(_ c2: UIColor) -> Bool {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        var red2: CGFloat = 0
        var green2: CGFloat = 0
        var blue2: CGFloat = 0
        var alpha2: CGFloat = 0
        c2.getRed(&red2, green: &green2, blue: &blue2, alpha: &alpha2)
        
        return (Int(red * 255) == Int(red * 255) &&
                Int(green * 255) == Int(green2 * 255) &&
                Int(blue * 255) == Int(blue * 255))
    }
}
