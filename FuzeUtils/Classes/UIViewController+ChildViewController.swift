//
//  UIViewController+ChildViewController.swift
//
//  Created by Gutenberg Neto on 03/08/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension UIViewController {
    public func addChildViewControllerSetupConstraints(_ childViewController: UIViewController, toView: UIView,
                                                presentingAnimationDuration: TimeInterval = 0) {
        // adds the child view controller as a subview [GN]
        childViewController.view.alpha = 0
        self.addChildViewController(childViewController)
        toView.addSubviewSetupConstraints(childViewController.view, constraintSuperview: self.view)
        childViewController.didMove(toParentViewController: self)
        UIView.animate(withDuration: presentingAnimationDuration, animations: {
            childViewController.view.alpha = 1.0
        }, completion: nil)
    }
    
    public func removeChildViewControllerAndView(_ childViewController: UIViewController,
                                          dismissAnimationDuration: TimeInterval = 0) {
        UIView.animate(withDuration: dismissAnimationDuration, animations: {
            childViewController.view.alpha = 0.0
        }) { _ in
            childViewController.view.removeFromSuperview()
            childViewController.removeFromParentViewController()
        }
    }

    public func presentFaded(_ viewControllerToPresent: UIViewController, duration: TimeInterval,
                 completion: (() -> Swift.Void)? = nil) {
        guard let mainWindow = UIApplication.shared.windows.first else {
            return
        }
        
        let transition = CATransition()
        transition.duration = duration
        transition.type = kCATransitionFade
        transition.subtype = kCATransitionFromBottom
        mainWindow.layer.add(transition, forKey: kCATransition)
        self.present(viewControllerToPresent, animated: false, completion: completion)
    }
}

extension UIView {
    public func addSubviewSetupConstraints(_ subview: UIView, constraintSuperview: UIView? = nil) {
        self.addSubview(subview)
        
        // adds constraints that will make the child view follow the same frame as its container [GN]
        let topConstraint = NSLayoutConstraint(item: subview,
                                               attribute: NSLayoutAttribute.top,
                                               relatedBy: NSLayoutRelation.equal,
                                               toItem: self,
                                               attribute: NSLayoutAttribute.top,
                                               multiplier: CGFloat(1), constant: CGFloat(0))
        let leadingConstraint = NSLayoutConstraint(item: subview,
                                                   attribute: NSLayoutAttribute.leading,
                                                   relatedBy: NSLayoutRelation.equal,
                                                   toItem: self,
                                                   attribute: NSLayoutAttribute.leading,
                                                   multiplier: CGFloat(1), constant: CGFloat(0))
        let bottomConstraint = NSLayoutConstraint(item: self,
                                                  attribute: NSLayoutAttribute.bottom,
                                                  relatedBy: NSLayoutRelation.equal,
                                                  toItem: subview,
                                                  attribute: NSLayoutAttribute.bottom,
                                                  multiplier: CGFloat(1), constant: CGFloat(0))
        let trailingConstraint = NSLayoutConstraint(item: self,
                                                    attribute: NSLayoutAttribute.trailing,
                                                    relatedBy: NSLayoutRelation.equal,
                                                    toItem: subview,
                                                    attribute: NSLayoutAttribute.trailing,
                                                    multiplier: CGFloat(1), constant: CGFloat(0))
        self.translatesAutoresizingMaskIntoConstraints = false
        subview.translatesAutoresizingMaskIntoConstraints = false
        
        let constraintSuperview = constraintSuperview ?? self
        constraintSuperview.addConstraints([topConstraint, leadingConstraint, bottomConstraint, trailingConstraint])
    }
}
