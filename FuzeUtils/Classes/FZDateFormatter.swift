//
//  FZDateFormatter.swift
//
//  Created by Felipe Lacet on 26/04/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import UIKit

public class FZDateFormatter {
    
    public static var defaultInputDateFormat: String?
    public static var defaultOutputDateFormat: String?
    
    public static func getFormattedDateString(date: Date, outputDateFormat: String, locale: String? = nil,
                                       amSymbol: String? = nil, pmSymbol: String? = nil) -> String {
        
        let outputDateFormatter = DateFormatter()
        outputDateFormatter.dateFormat = outputDateFormat
        
        if let amSymbol = amSymbol {
            outputDateFormatter.amSymbol = amSymbol
        }
        
        if let pmSymbol = pmSymbol {
            outputDateFormatter.pmSymbol = pmSymbol
        }
        
        if let locale = locale {
            outputDateFormatter.locale = Locale(identifier: NSLocalizedString(locale, comment: ""))
        }
        return outputDateFormatter.string(from: date)
    }
    
    public static func convertDateFormat(dateString: String, inputDateFormat: String? = nil, outputDateFormat: String? = nil,
                                        locale: String? = nil, amSymbol: String? = nil, pmSymbol: String? = nil) -> String {
        
        let inputDateFormat = (inputDateFormat != nil) ? inputDateFormat
            : (self.defaultInputDateFormat != nil) ? self.defaultInputDateFormat : nil
        let outputDateFormat = (outputDateFormat != nil) ? outputDateFormat
            : (self.defaultOutputDateFormat != nil) ? self.defaultOutputDateFormat : nil
        
        guard inputDateFormat != nil, let finalOutputDateFormat = outputDateFormat else {
            return ""
        }

        let inputDateFormatter = DateFormatter()
        inputDateFormatter.dateFormat = inputDateFormat
        guard let outputDate = inputDateFormatter.date(from: dateString) else {
            return dateString
        }
        
        return FZDateFormatter.getFormattedDateString(date: outputDate, outputDateFormat: finalOutputDateFormat,
                                                      locale: locale, amSymbol: amSymbol, pmSymbol: pmSymbol)
    }
}
