//
//  UIViewController+UserActivity.swift
//  VHX
//
//  Created by Gutenberg Neto on 28/11/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import UIKit
import MediaPlayer

extension UIViewController {
    func registerUserActivity(activityType: String, contentIdentifier: String) {
        guard #available(iOS 10.1, *),
            let bundleIdentifier = Bundle.main.bundleIdentifier else {
                return
        }
        
        let activityType = bundleIdentifier + "." + activityType
        self.userActivity = NSUserActivity(activityType: activityType)
        
        self.userActivity?.externalMediaContentIdentifier = contentIdentifier
        self.userActivity?.becomeCurrent()
    }
}
