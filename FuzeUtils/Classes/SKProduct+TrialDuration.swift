//
//  SKProduct+TrialDuration.swift
//
//  Created by Gutenberg Neto on 6/8/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation
import StoreKit

public extension SKProduct {
    func getTrialDurationDays() -> Int? {
        guard #available(iOS 11.2, tvOS 11.2, *), let period = self.introductoryPrice?.subscriptionPeriod else {
            return nil
        }
        
        var units = period.numberOfUnits
        
        switch period.unit {
        case .month:
            units *= 30
        case .week:
            units *= 7
        case .year:
            units *= 365
        default:
            break
        }
        
        return units
    }
}
