//
//  Network.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/14/22.
//

import Foundation
import Combine

class NetworkController {
    typealias Headers = [String: Any]
    func get<T: Decodable>(type: T.Type,
                           url: URL,
                           headers: Headers
    ) -> AnyPublisher<T, Error> {
        
        var urlRequest = URLRequest(url: url)
        
        headers.forEach { (key, value) in
            if let value = value as? String {
                urlRequest.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .map(\.data)
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
}


