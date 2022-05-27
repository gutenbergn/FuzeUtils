//
//  UIView+RemoveGestureRecognizers.swift
//
//  Created by Gutenberg Neto on 17/5/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    func removeAllGestureRecognizers() {
        self.gestureRecognizers?.forEach(self.removeGestureRecognizer)
    }
}

