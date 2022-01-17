//
//  ProductsCel.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/15/22.
//
import Foundation
import SwiftUI

struct ProductCel: View {
    var product: Product
    let colorP = UIColor(red: 1, green: 1, blue: 1, alpha: 0.6)
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(){
                AsyncImage(url: URL(string: "\(product.image)"))
                    .frame(width: 70, height: 70)
                    .cornerRadius(5)
                    .padding(10)
                
                VStack(alignment: .leading, spacing: 10){
                    Text("\(product.productName)")
                        .font(.system(size: 18, weight: .bold, design: .default))
                        .foregroundColor(.white)
                        .padding(.top)
                    Text("\(product.brandName)")
                        .foregroundColor(Color(colorP))
                    
                    Text("$ \(product.price)")
                        .bold()
                        .foregroundColor(.white)

                }
            }
            HStack(spacing: 85){
                Text("\(product.address.city)")
                    .foregroundColor(Color(colorP))
                    .padding(.leading)

                Text("Date: \(product.formattedDate)")
                    .foregroundColor(Color(colorP))
                    .padding(.trailing)
            }
            Text("\(product.discription)")
                .foregroundColor(Color(colorP))
                .padding(.top)
                .padding(.bottom)
                .padding(.leading)
        }
        .background(Color.black)
        .cornerRadius(5)
    }
}

struct ProductsCel_Previews: PreviewProvider {
    static var previews: some View {
        ProductCel(product: Product(productName: "pN", brandName: "BN", price: 20, address: Address(state: "state", city: "city"), discription: "desc", date: "date", time: "time", image: "img"))
    }
}
