//
//  UIButton+RoundedBackgroundImage.swift
//  Honest Account
//
//  Created by Ícaro Magalhães on 09/04/18.
//  Copyright © 2018 Honest Account. All rights reserved.
//

import UIKit

extension UIButton {
    func addRoundedBackgroundImage(color: UIColor, cornerRadius: CGFloat = 8) {
        let buttonSize = self.layer.frame.size
        let roundedBackgroundImage = UIImage.image(
            color: color, size: buttonSize)?.withRoundedBorders(cornerRadius: cornerRadius)
        self.setBackgroundImage(roundedBackgroundImage, for: .normal)
    }
}
