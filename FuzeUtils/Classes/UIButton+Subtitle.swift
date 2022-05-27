//
//  UIButton+Subtitle.swift
//
//  Created by Gutenberg Neto on 26/04/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import UIKit

public extension UIButton {
    func setTitle(_ title: String, titleFont: UIFont, titleColor: UIColor? = nil,
                         subtitle: String, subtitleFont: UIFont, subtitleColor: UIColor? = nil,
                         lineSpacing: CGFloat = 8, for state: UIControl.State = .normal) {
        guard !title.isEmpty, !subtitle.isEmpty else {
            return
        }
        
        self.titleLabel?.numberOfLines = 2
        
        let separatorParagraphStyle = NSMutableParagraphStyle()
        separatorParagraphStyle.lineSpacing = lineSpacing
        separatorParagraphStyle.alignment = self.getParagraphAlignment()
        
        let text = "\(title)\n\(subtitle)"
        
        let mutableAttributedText = NSMutableAttributedString(string: text)
        mutableAttributedText.addAttribute(NSAttributedString.Key.font, value: titleFont,
                                           range: NSMakeRange(0, title.count))
        mutableAttributedText.addAttribute(NSAttributedString.Key.font, value: subtitleFont,
                                           range: NSMakeRange(title.count + 1, subtitle.count))
        mutableAttributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: separatorParagraphStyle,
                                           range: NSMakeRange(0, text.count))
        
        if let titleColor = titleColor {
            mutableAttributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: titleColor,
                                               range: NSMakeRange(0, title.count))
        }
        
        if let subtitleColor = subtitleColor {
            mutableAttributedText.addAttribute(NSAttributedString.Key.foregroundColor, value: subtitleColor,
                                               range: NSMakeRange(title.count + 1, subtitle.count))
        }
        
        self.setAttributedTitle(mutableAttributedText, for: state)
    }
    
    private func getParagraphAlignment() -> NSTextAlignment {
        switch self.contentHorizontalAlignment {
        case .center:
            return .center
        case .leading, .left:
            return .left
        case .trailing, .right:
            return .right
        case .fill:
            return .justified
        @unknown default:
            return .center
        }
    }
}
