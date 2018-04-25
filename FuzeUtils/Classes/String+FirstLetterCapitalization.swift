//
//  String+FirstLetterCapitalization.swift
//  VHX
//
//  Created by Daniel Ramos on 3/22/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation

extension String {
    // based on an answer to a Stack Overflow question:
    // https://stackoverflow.com/questions/26306326/swift-apply-uppercasestring-to-only-the-first-letter-of-a-string [GN]
    func capitalizingFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.dropFirst()
    }
}
