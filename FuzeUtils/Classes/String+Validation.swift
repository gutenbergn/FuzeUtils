//
//  String+Validation.swift
//
//  Created by Gutenberg Neto on 25/08/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

public extension String {
    public func isEmpty(shouldTrim: Bool = true) -> Bool {
        return shouldTrim ? self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty :
            self.isEmpty
    }
    
    // based on an answer to a Stack Overflow question:
    // https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift/35651660 [GN]
    public func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
