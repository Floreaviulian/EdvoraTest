//
//  ProductsViewModel.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/14/22.
//

import Foundation
import Combine


class ProductsViewModel: ObservableObject {
    @Published var productGroups = [String: [Product]]()
    private var allProducts = [Product]()
    private var subscriptions = Set<AnyCancellable>()
    private let productsNetworkService = ProductsNetworkingService()
    
    func updateProducts() {
        productsNetworkService.getProducts()
            .sink(receiveCompletion: { (completion) in
                switch completion {
                case let .failure(error):
                    print("Couldn't get products: \(error)")
                case .finished: break
                }
            }) { [weak self] products in
                self?.groupProducts(products)
            }
            .store(in: &subscriptions)
    }
    
    func filterProducts(with filter: String) {
        
    }
    
    private func groupProducts(_ products: [Product]) {
        var newProducts = [String: [Product]]()
        for product in products {
            let group = newProducts[product.productName] ?? []
            newProducts[product.productName] = group + [product]
        }
        productGroups = newProducts
    }
}
