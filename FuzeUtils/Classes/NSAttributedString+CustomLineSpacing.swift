//
//  NSAttributedString+CustomLineSpacing.swift
//
//  Created by Daniel Ramos on 10/16/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

public extension NSAttributedString {
    public static func getCustomLineSpacedAttributedString(text: String, font: UIFont, textColor: UIColor, lineSpacing: CGFloat,
                                                    shouldTruncateTail: Bool = false) -> NSAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.maximumLineHeight = lineSpacing
        paragraphStyle.minimumLineHeight = lineSpacing
        
        if shouldTruncateTail {
            paragraphStyle.lineBreakMode = .byTruncatingTail
        }
        
        let textFontAttributes = [
            NSAttributedStringKey.font: font,
            NSAttributedStringKey.foregroundColor: textColor,
            NSAttributedStringKey.paragraphStyle: paragraphStyle
        ]
        
        return NSAttributedString(string: text, attributes: textFontAttributes)
    }
}
