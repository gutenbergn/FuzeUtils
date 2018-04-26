//
//  UIPageViewController+ScrollView.swift
//
//  Created by Gutenberg Neto on 14/08/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIPageViewController {
    public func getUnderlyingScrollView() -> UIScrollView? {
        for view in self.view.subviews {
            if let scrollView = view as? UIScrollView {
                return scrollView
            }
        }
        
        return nil
    }
}
