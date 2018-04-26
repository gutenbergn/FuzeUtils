//
//  String+SizeWithFont.swift
//
//  Created by Gutenberg Neto on 10/04/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

public extension String {
    public func getSize(font: UIFont, sizeConstraint: CGSize, padding: Int = 0) -> CGSize {
        let paddedString = self.getPaddedString(padding: padding)
        
        let attributes = [NSAttributedStringKey.font: font]
        let stringRect = (paddedString as NSString).boundingRect(with: sizeConstraint,
                                                         options: NSStringDrawingOptions.usesLineFragmentOrigin,
                                                         attributes: attributes, context: nil)
        return stringRect.size
    }
    
    private func getPaddedString(padding: Int) -> String {
        var paddedString = self
        
        var paddingCount = 0
        while paddingCount < padding {
            paddedString += "."
            paddingCount += 1
        }
        
        return paddedString
    }
}
