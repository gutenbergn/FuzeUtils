//
//  UISearchBar+Subviews.swift
//
//  Created by Daniel Ramos on 8/17/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UISearchBar {
    var cancelButton: UIButton? {
        for subView1 in subviews {
            for subView2 in subView1.subviews {
                if let cancelButton = subView2 as? UIButton {
                    return cancelButton
                }
            }
        }
        return nil
    }
    
    var textField: UITextField? {
        return self.value(forKey: "searchField") as? UITextField
    }
}
