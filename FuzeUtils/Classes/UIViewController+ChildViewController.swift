//
//  UIViewController+ChildViewController.swift
//
//  Created by Gutenberg Neto on 03/08/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIViewController {
    func addChildViewControllerSetupConstraints(_ childViewController: UIViewController, toView: UIView,
                                                presentingAnimationDuration: TimeInterval = 0) {
        // adds the child view controller as a subview [GN]
        childViewController.view.alpha = 0
        self.addChild(childViewController)
        toView.addSubviewSetupConstraints(childViewController.view, constraintSuperview: self.view)
        childViewController.didMove(toParent: self)
        UIView.animate(withDuration: presentingAnimationDuration, animations: {
            childViewController.view.alpha = 1.0
        }, completion: nil)
    }
    
    func removeChildViewControllerAndView(_ childViewController: UIViewController,
                                          dismissAnimationDuration: TimeInterval = 0) {
        UIView.animate(withDuration: dismissAnimationDuration, animations: {
            childViewController.view.alpha = 0.0
        }) { _ in
            childViewController.view.removeFromSuperview()
            childViewController.removeFromParent()
        }
    }

    func presentFaded(_ viewControllerToPresent: UIViewController, duration: TimeInterval,
                 completion: (() -> Swift.Void)? = nil) {
        guard let mainWindow = UIApplication.shared.windows.first else {
            return
        }
        
        let transition = CATransition()
        transition.duration = duration
        transition.type = CATransitionType.fade
        transition.subtype = CATransitionSubtype.fromBottom
        mainWindow.layer.add(transition, forKey: kCATransition)
        self.present(viewControllerToPresent, animated: false, completion: completion)
    }
}

public extension UIView {
    func addSubviewSetupConstraints(_ subview: UIView, constraintSuperview: UIView? = nil) {
        self.addSubview(subview)
        
        // adds constraints that will make the child view follow the same frame as its container [GN]
        let topConstraint = NSLayoutConstraint(item: subview,
                                               attribute: NSLayoutConstraint.Attribute.top,
                                               relatedBy: NSLayoutConstraint.Relation.equal,
                                               toItem: self,
                                               attribute: NSLayoutConstraint.Attribute.top,
                                               multiplier: CGFloat(1), constant: CGFloat(0))
        let leadingConstraint = NSLayoutConstraint(item: subview,
                                                   attribute: NSLayoutConstraint.Attribute.leading,
                                                   relatedBy: NSLayoutConstraint.Relation.equal,
                                                   toItem: self,
                                                   attribute: NSLayoutConstraint.Attribute.leading,
                                                   multiplier: CGFloat(1), constant: CGFloat(0))
        let bottomConstraint = NSLayoutConstraint(item: self,
                                                  attribute: NSLayoutConstraint.Attribute.bottom,
                                                  relatedBy: NSLayoutConstraint.Relation.equal,
                                                  toItem: subview,
                                                  attribute: NSLayoutConstraint.Attribute.bottom,
                                                  multiplier: CGFloat(1), constant: CGFloat(0))
        let trailingConstraint = NSLayoutConstraint(item: self,
                                                    attribute: NSLayoutConstraint.Attribute.trailing,
                                                    relatedBy: NSLayoutConstraint.Relation.equal,
                                                    toItem: subview,
                                                    attribute: NSLayoutConstraint.Attribute.trailing,
                                                    multiplier: CGFloat(1), constant: CGFloat(0))
        self.translatesAutoresizingMaskIntoConstraints = false
        subview.translatesAutoresizingMaskIntoConstraints = false
        
        let constraintSuperview = constraintSuperview ?? self
        constraintSuperview.addConstraints([topConstraint, leadingConstraint, bottomConstraint, trailingConstraint])
    }
}
