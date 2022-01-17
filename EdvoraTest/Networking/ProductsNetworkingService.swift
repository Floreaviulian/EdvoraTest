//
//  ProductsNetworkingService.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/14/22.
//

import Foundation
import Combine

class ProductsNetworkingService {
    private let networkController = NetworkController()
    
    func getProducts() -> AnyPublisher<[Product], Error> {
          let endpoint = Endpoint.products
          
        return networkController.get(type: [Product].self,
                                       url: endpoint.url,
                                       headers: endpoint.headers)
      }
}
