//
//  UITableViewCell+TableView.swift
//
//  Created by Gutenberg Neto on 18/10/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    public func getContainerTableView() -> UITableView? {
        var view = self.superview
        
        while view != nil && !(view is UITableView) {
            view = view?.superview
        }
        
        return view as? UITableView
    }
}
