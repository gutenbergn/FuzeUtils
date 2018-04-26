//
//  UIView+ViewDisplay.swift
//
//  Created by Gutenberg Neto on 25/4/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    static let kDefaultAnimationTime = TimeInterval(0.25)
    
    public func animateDisplay(animationDuration: TimeInterval = kDefaultAnimationTime) {
        guard self.isHidden else {
            return
        }
        
        DispatchQueue.main.async {
            self.alpha = 0.0
            self.isHidden = false
            UIView.animate(withDuration: animationDuration, delay: 0,
                           options: UIViewAnimationOptions.curveEaseOut, animations: {
                            self.alpha = 1.0
            }, completion: nil)
        }
    }
    
    public func animateHiding(animationDuration: TimeInterval = kDefaultAnimationTime,
                           shouldRemoveFromSuperview: Bool = false) {
        guard !self.isHidden else {
            return
        }
        
        DispatchQueue.main.async {
            UIView.animate(withDuration: animationDuration, delay: 0,
                           options: UIViewAnimationOptions.curveEaseOut, animations: {
                            self.alpha = 0.0
            }, completion: { _ in
                self.isHidden = true
                
                if shouldRemoveFromSuperview {
                    self.removeFromSuperview()
                }
            })
        }
    }
}
