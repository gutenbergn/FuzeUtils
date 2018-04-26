//
//  NSObject+RemoveObservers.swift
//
//  Created by Gutenberg Neto on 27/10/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension NSObject {
    public func removeAllObservers() {
        NotificationCenter.default.removeObserver(self)
    }
}
