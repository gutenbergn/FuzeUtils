//
//  NSString+StripCurrency.swift
//
//  Created by Gutenberg Neto on 07/06/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

public extension NSString {
    public static func stripCurrency(_ string: NSString) -> NSString {
        return string.components(separatedBy: CharacterSet(charactersIn: "0123456789.,").inverted).joined(separator: "")
            as NSString
    }
}
