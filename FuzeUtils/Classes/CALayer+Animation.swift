//
//  CALayer+Animation.swift
//
//  Created by Gutenberg Neto on 26/05/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import QuartzCore

public extension CALayer {
    func addFadeAnimation(animationTime: CFTimeInterval,
                          timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)) {
        let animationTransition = CATransition()
        animationTransition.duration = animationTime
        animationTransition.type = CATransitionType.fade
        animationTransition.timingFunction = timingFunction
        
        self.add(animationTransition, forKey: "fadeAnim")
    }
}
