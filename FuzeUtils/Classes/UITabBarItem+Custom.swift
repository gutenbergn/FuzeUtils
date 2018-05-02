//
//  UITabBarItem.swift
//  Honest Account
//
//  Created by Ícaro Magalhães on 15/03/18.
//  Copyright © 2018 Honest Account. All rights reserved.
//

import UIKit

extension UITabBarItem {
    func configure(title: String, imageName: String, selectedImageName: String) {
        self.title = title
        self.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        self.selectedImage = UIImage(named: selectedImageName)?.withRenderingMode(.alwaysOriginal)
    }
}