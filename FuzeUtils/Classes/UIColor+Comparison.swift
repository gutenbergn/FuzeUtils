//
//  UIColor+Brightness.swift
//
//  Created by Daniel Ramos on 2/23/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    func isEqualWithConversion(_ color: UIColor) -> Bool {
        guard let space = self.cgColor.colorSpace else { return false }
        guard let converted = color.cgColor.converted(to: space, intent: .absoluteColorimetric,
                                                      options: nil) else { return false }
        return self.cgColor == converted
    }
}
