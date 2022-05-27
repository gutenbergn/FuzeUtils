//
//  NSLayoutConstraint+Multiplier.swift
//
//  Created by Gutenberg Neto on 07/16/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import UIKit

public extension NSLayoutConstraint {
    // based on an answer to a Stack Overflow question:
    // https://stackoverflow.com/questions/19593641/can-i-change-multiplier-property-for-nslayoutconstraint [GN]
    func setMultiplier(multiplier: CGFloat) -> NSLayoutConstraint? {
        guard let firstItem = self.firstItem else {
            return nil
        }
        
        NSLayoutConstraint.deactivate([self])
        
        let newConstraint = NSLayoutConstraint(item: firstItem, attribute: self.firstAttribute,
                                               relatedBy: self.relation, toItem: self.secondItem,
                                               attribute: self.secondAttribute, multiplier: multiplier,
                                               constant: self.constant)
        
        newConstraint.priority = self.priority
        newConstraint.shouldBeArchived = self.shouldBeArchived
        newConstraint.identifier = self.identifier
        
        NSLayoutConstraint.activate([newConstraint])
        return newConstraint
    }
}
