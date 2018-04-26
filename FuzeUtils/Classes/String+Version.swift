//
//  String+Version.swift
//
//  Created by Gutenberg Neto on 10/04/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation

public extension String {
    public static func getVersionString() -> String {
        guard let versionString = Bundle.main.infoDictionary?["CFBundleVersion"] as? String,
            let shortVersionString = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String else {
                return ""
        }
        
        let finalString = "v" + shortVersionString + " (" + versionString + ")"
        
        return finalString
    }
}
