//
//  UIView+LoadFromNib.swift
//
//  Created by Daniel Ramos on 10/3/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    public func loadViewFromNib(customNibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: customNibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}

