//
//  UIViewController+PreloadView.swift
//
//  Created by Gutenberg Neto on 09/08/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIViewController {
    static let kDefaultAnimationTime = TimeInterval(0.25)
    
    public static func preloadView(viewController: UIViewController) {
        // simply referencing the `view` property will cause the views to load [GN]
        _ = viewController.view
    }
    
    public static func preloadViews(viewControllers: [UIViewController]) {
        for viewController in viewControllers {
            UIViewController.preloadView(viewController: viewController)
        }
    }
}
