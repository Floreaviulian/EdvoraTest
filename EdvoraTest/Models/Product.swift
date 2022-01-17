//
//  Product.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/14/22.
//

import Foundation

struct Product: Codable {
    let productName: String
    let brandName: String
    let price: Int
    let address: Address
    let discription: String
    let date, time: String
    let image: String
    
    var formattedDate: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let newDate = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "dd/MM/YYY"
        return dateFormatter.string(from: newDate!)
    }
    
    enum CodingKeys: String, CodingKey {
        case productName = "product_name"
        case brandName = "brand_name"
        case price, address, discription, date, time, image
    }
}

// MARK: - Address
struct Address: Codable {
    let state, city: String
}

