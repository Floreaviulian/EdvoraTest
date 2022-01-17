//
//  Endpoint.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/14/22.
//

import Foundation


struct Endpoint {
    var path: String
    var queryItems: [URLQueryItem] = []
}


extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "assessment-edvora.herokuapp.com"
        components.path = "/" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return url
    }
    
    var headers: [String: Any] {
        return [:]
    }
}
