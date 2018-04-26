//
//  UIImage+Color.swift
//
//  Created by Gutenberg Neto on 26/05/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit

@objc public extension UIImage {
    // based on an answer to a Stack Overflow question:
    // https://stackoverflow.com/questions/26542035/create-uiimage-with-solid-color-in-swift [GN]
    @objc public static func image(color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        var colorImage: UIImage?
        
        UIGraphicsBeginImageContext(rect.size)
        color.setFill()
        UIRectFill(rect)
        colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return colorImage
    }
    
    // based on an answer to a Stack Overflow question:
    // https://stackoverflow.com/questions/45327625/changing-the-tint-of-the-image-in-swift [GN]
    @objc public func tinted(tintColor: UIColor) -> UIImage {
        var alwaysTemplateImage = self.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        UIGraphicsBeginImageContextWithOptions(self.size, false, self.scale)
        tintColor.set()
        alwaysTemplateImage.draw(in: CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height))
        alwaysTemplateImage = UIGraphicsGetImageFromCurrentImageContext() ?? alwaysTemplateImage
        UIGraphicsEndImageContext()
        
        return alwaysTemplateImage
    }
}
