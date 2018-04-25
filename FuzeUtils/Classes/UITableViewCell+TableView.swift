//
//  UITableViewCell+TableView.swift
//  VHX
//
//  Created by Gutenberg Neto on 18/10/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

extension UITableViewCell {
    func getContainerTableView() -> UITableView? {
        var view = self.superview
        
        while view != nil && !(view is UITableView) {
            view = view?.superview
        }
        
        return view as? UITableView
    }
}
