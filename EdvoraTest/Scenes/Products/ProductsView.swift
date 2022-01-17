//
//  ProductsView.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/14/22.
//

import SwiftUI

struct ProductsView: View {
    let products: [Product]
    let category: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(category)")
                .font(.largeTitle)
                .foregroundColor(.white)
            Divider().background(Color.white)
            ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(0..<products.count, id: \.self) { index in
                                ProductCel(product: products[index])
                            }
                        }
                    }
        }
        
    }
    
    struct ProductsView_Previews: PreviewProvider {
        static var previews: some View {
            ProductsView(products: [Product(productName: "pN", brandName: "BN", price: 20, address: Address(state: "state", city: "city"), discription: "desc", date: "date", time: "time", image: "img")], category: "Edvora")
        }
    }
}
