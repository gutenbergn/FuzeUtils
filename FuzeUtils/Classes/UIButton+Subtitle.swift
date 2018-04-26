//
//  UIButton+Subtitle.swift
//
//  Created by Gutenberg Neto on 26/04/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import UIKit

public extension UIButton {
    public func setTitle(_ title: String, titleFont: UIFont, subtitle: String, subtitleFont: UIFont,
                         lineSpacing: CGFloat = 8, for state: UIControlState = .normal) {
        guard !title.isEmpty, !subtitle.isEmpty else {
            return
        }
        
        self.titleLabel?.numberOfLines = 2
        
        let separatorParagraphStyle = NSMutableParagraphStyle()
        separatorParagraphStyle.lineSpacing = lineSpacing
        separatorParagraphStyle.alignment = .center
        
        let text = "\(title)\n\(subtitle)"
        
        let mutableAttributedText = NSMutableAttributedString(string: text)
        mutableAttributedText.addAttribute(NSAttributedStringKey.font, value: titleFont,
                                           range: NSMakeRange(0, title.count))
        mutableAttributedText.addAttribute(NSAttributedStringKey.font, value: subtitleFont,
                                           range: NSMakeRange(title.count + 1, subtitle.count))
        mutableAttributedText.addAttribute(NSAttributedStringKey.paragraphStyle, value: separatorParagraphStyle,
                                           range: NSMakeRange(0, text.count))
        
        self.setAttributedTitle(mutableAttributedText, for: state)
    }
}
