//
//  DisplayHelper.swift
//
//  Created by Daniel Ramos on 5/16/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

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
}

public final class Display {
    public class var width: CGFloat { return UIScreen.main.bounds.size.width }
    public class var height: CGFloat { return UIScreen.main.bounds.size.height }
    public class var maxLength: CGFloat { return max(width, height) }
    public class var minLength: CGFloat { return min(width, height) }
    public class var zoomed: Bool { return UIScreen.main.nativeScale >= UIScreen.main.scale }
    public class var retina: Bool { return UIScreen.main.scale >= 2.0 }
    public class var phone: Bool { return UIDevice.current.userInterfaceIdiom == .phone }
    public class var pad: Bool { return UIDevice.current.userInterfaceIdiom == .pad }
    public class var padPro1366: Bool { return UIDevice.current.userInterfaceIdiom == .pad &&
        max(Display.height, Display.width) == 1366 }
    public class var carplay: Bool { return UIDevice.current.userInterfaceIdiom == .carPlay }
    public class var tv: Bool { return UIDevice.current.userInterfaceIdiom == .tv }
    public class var typeIsLike: DisplayType {
        if phone && maxLength < 568 {
            return .iphone4
        } else if phone && maxLength == 568 {
            return .iphone5
        } else if phone && maxLength == 667 {
            return .iphone6
        } else if phone && maxLength == 736 {
            return .iphone6plus
        } else if phone && maxLength == 812 {
            return .iphoneX
        }
        return .unknown
    }
}
