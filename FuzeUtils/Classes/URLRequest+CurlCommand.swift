//
//  URLRequest+CurlCommand.swift
//
//  Created by Felipe Lacet on 26/04/18.
//  Copyright © 2018 Fuze. All rights reserved.
//

import Foundation

public extension URLRequest {
    
    public func curl(pretty: Bool = false) -> String {
        
        var data: String = ""
        let complement = pretty ? "\\\n" : ""
        let method = "-X \(self.httpMethod ?? "GET") \(complement)"
        let absoluteString = self.url?.absoluteString ?? ""
        let url = "\"" + absoluteString + "\""

        var header = ""
        
        if let httpHeaders = self.allHTTPHeaderFields, httpHeaders.keys.count > 0 {
            for (key, value) in httpHeaders {
                header += "-H \"\(key): \(value)\" \(complement)"
            }
        }
        
        if let bodyData = self.httpBody, let bodyString = String(data: bodyData, encoding: .utf8) {
            data = "-d \"\(bodyString)\" \(complement)"
        }
        
        let command = "curl -i " + complement + method + header + data + url
        
        return command
    }
    
}

