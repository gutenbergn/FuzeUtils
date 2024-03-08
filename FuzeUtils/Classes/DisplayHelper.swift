//
//  DisplayHelper.swift
//
//  Created by Daniel Ramos on 5/16/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation
import UIKit

// this whole class is based on an answer to a Stack Overflow question:
// https://stackoverflow.com/questions/25780283/ios-how-to-detect-iphone-x-iphone-6-plus-iphone-6-iphone-5-iphone-4-by-macro [GN]
public enum DisplayType {
    case unknown
    case iphone4
    case iphone5
    case iphone6
    case iphone6plus
    static let iphone7 = iphone6
    static let iphone7plus = iphone6plus
    case iphoneX
    case iphoneXR
    static let iphoneXSMax = iphoneXR

}

public final class Display {
    private static var lastHeight: CGFloat = 0
    private static var lastWidth: CGFloat = 0
    
    public class var width: CGFloat {
        guard let keyWindow = UIApplication.getKeyWindow() else {
            return Self.lastWidth
        }
        
        let windowWidth = keyWindow.bounds.size.width
        
        Self.lastWidth = windowWidth > 0 ? windowWidth : Self.lastWidth
        
        return windowWidth
    }
    
    public class var height: CGFloat {
        guard let keyWindow = UIApplication.getKeyWindow() else {
            return Self.lastHeight
        }
        
        let windowHeight = keyWindow.bounds.size.height
        
        Self.lastHeight = windowHeight > 0 ? windowHeight : Self.lastHeight
        
        return windowHeight
    }
    
    public class var screenBounds: CGRect {
        #if !os(visionOS)
        return UIScreen.main.bounds
        #else
        UIApplication.shared.connectedScenes.compactMap { ($0 as? UIWindowScene)?.keyWindow }.last?.bounds ?? CGRect(x: 0, y: 0, width: 1280, height: 720)
        #endif
    }
    
    public class var maxLength: CGFloat { return max(width, height) }
    public class var minLength: CGFloat { return min(width, height) }
    public class var phone: Bool { return UIDevice.current.userInterfaceIdiom == .phone }
    public class var pad: Bool { return UIDevice.current.userInterfaceIdiom == .pad }
    public class var padPro1366: Bool { return UIDevice.current.userInterfaceIdiom == .pad &&
        max(Display.height, Display.width) == 1366 }
    public class var carplay: Bool { return UIDevice.current.userInterfaceIdiom == .carPlay }
    public class var tv: Bool { return UIDevice.current.userInterfaceIdiom == .tv }
    public class var visionOS: Bool {
        if #available(iOS 17.0, tvOS 17.0, *) {
            return UIDevice.current.userInterfaceIdiom == .vision
        } else {
            return false
        }
    }
    public class var hasNotch: Bool { return Display.typeIsLike == .iphoneX || Display.typeIsLike == .iphoneXR }
    public class var typeIsLike: DisplayType {
        if phone && maxLength < 568 {
            return .iphone4
        } else if phone && maxLength == 568 {
            return .iphone5
        } else if phone && maxLength == 667 {
            return .iphone6
        } else if phone && maxLength == 736 {
            return .iphone6plus
        } else if phone && maxLength == 896 {
            return .iphoneXR
        } else if phone {
            return .iphoneX
        }
        return .unknown
    }
}
