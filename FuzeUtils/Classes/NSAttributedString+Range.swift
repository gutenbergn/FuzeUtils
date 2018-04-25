//
//  NSAttributedString+Range.swift
//  VHX
//
//  Created by Gutenberg Neto on 10/04/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

extension NSAttributedString {
    func range(of string: String) -> NSRange {
        let mutableAttributedString = NSMutableAttributedString(attributedString: self)
        
        return mutableAttributedString.mutableString.range(of: string)
    }
}
