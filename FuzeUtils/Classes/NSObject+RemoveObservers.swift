//
//  NSObject+RemoveObservers.swift
//  VHX
//
//  Created by Gutenberg Neto on 27/10/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

extension NSObject {
    func removeAllObservers() {
        NotificationCenter.default.removeObserver(self)
    }
}