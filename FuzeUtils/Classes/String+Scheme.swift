//
//  String+Scheme.swift
//
//  Created by Gutenberg Neto on 26/10/23.
//  Copyright © 2023 Fuze. All rights reserved.
//

import Foundation

public extension String {
    func removingScheme() -> String {
        if let range = self.range(of: "://") {
            return String(self[range.upperBound...])
        } else {
            return self
        }
    }
}
