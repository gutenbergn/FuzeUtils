//
//  String+Subscript.swift
//
//  Created by Gutenberg Neto on 02/10/17.
//  Copyright © 2017 Fuze. All rights reserved.
//

import Foundation

// based on an answer to a Stack Overflow question:
// https://stackoverflow.com/questions/24092884/get-nth-character-of-a-string-in-swift-programming-language [GN]
public extension String {
    public subscript (i: Int) -> Character {
        return self[index(self.startIndex, offsetBy: i)]
    }
    
    public subscript (i: Int) -> String {
        return String(self[i] as Character)
    }
    
    public subscript (r: Range<Int>) -> String {
        let start = index(self.startIndex, offsetBy: r.lowerBound)
        let end = index(self.startIndex, offsetBy: r.upperBound)
        return String(self[Range(start..<end)])
    }
}
