//
//  UIApplication+SceneHelper.swift
//  VHX
//
//  Created by Gutenberg Neto on 14/07/23.
//  Copyright © 2023 VHX. All rights reserved.
//

import Foundation
import UIKit

public extension UIApplication {
    static func getForegroundWindowScene(allowInactiveSceneAsBackup: Bool = false) -> UIWindowScene? {
        var windowScene = UIApplication.shared.connectedScenes
            .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene
        
        if windowScene == nil && allowInactiveSceneAsBackup {
            windowScene = UIApplication.shared.connectedScenes
                .first(where: { $0.activationState != .unattached }) as? UIWindowScene
        }
        return windowScene
    }
    
#if os(iOS)
    static func getForegroundInterfaceOrientation() -> UIInterfaceOrientation {
        return Self.getForegroundWindowScene()?.interfaceOrientation ?? .portrait
    }
#endif
    
    static func getKeyWindow(windowScene: UIWindowScene? = nil) -> UIWindow? {
        let scene = windowScene ?? Self.getForegroundWindowScene()
        
        return scene?.windows
            .first(where: { $0.isKeyWindow })
    }
    
    static func getKeyWindowRootViewController(windowScene: UIWindowScene? = nil) -> UIViewController? {
        let keyWindow = Self.getKeyWindow(windowScene: windowScene)
        
        return keyWindow?.rootViewController
    }
}
