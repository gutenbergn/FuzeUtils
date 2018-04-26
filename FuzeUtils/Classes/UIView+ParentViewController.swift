//
//  UIView+ParentViewController.swift
//
//  Created by Gutenberg Neto on 08/05/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIView {
    public func parentViewController() -> UIViewController? {
        var responder: UIResponder? = self
        while !(responder is UIViewController) {
            responder = responder?.next
            if responder == nil {
                break
            }
        }
        
        if let responderVC = responder as? UIViewController {
            return responderVC
        } else {
            return nil
        }
    }
}
