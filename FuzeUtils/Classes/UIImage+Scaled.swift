//
//  UIImage+Scaled.swift
//  VimeoPlayerSDK
//
//  Created by Gutenberg Neto on 01/02/18.
//

import UIKit

public extension UIImage {
    func scaled(to newSize: CGSize) -> UIImage {
        let rect = CGRect(origin: .zero, size: newSize)
        
        if #available(iOS 10.0, tvOS 10.0, *) {
            let renderer = UIGraphicsImageRenderer(size: newSize)
            
            return renderer.image { _ in
                self.draw(in: rect)
            }
        } else {
            return self
        }
    }
    
    func scaled(percentage: CGPoint) -> UIImage {
        return self.scaled(to: CGSize(width: self.size.width * percentage.x, height: self.size.height * percentage.y))
    }
}
