//
//  CALayer+Animation.swift
//  VHX
//
//  Created by Gutenberg Neto on 26/05/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import QuartzCore

extension CALayer {
    func addFadeAnimation(animationTime: CFTimeInterval,
                          timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)) {
        let animationTransition = CATransition()
        animationTransition.duration = animationTime
        animationTransition.type = kCATransitionFade
        animationTransition.timingFunction = timingFunction
        
        self.add(animationTransition, forKey: "fadeAnim")
    }
}
