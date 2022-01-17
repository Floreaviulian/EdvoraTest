//
//  MainView.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/17/22.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel = ProductsViewModel()
    var backgroundColor = UIColor(red: 0.162, green: 0.162, blue: 0.162, alpha: 1).cgColor
    var body: some View {
       
        VStack(alignment: .leading){
            Text("Edvora")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            FilterCel()
            ScrollView(.vertical) {
                VStack {
                    ForEach((viewModel.productGroups.keys.sorted()), id: \.self) { index in
                        ProductsView(products: viewModel.productGroups[index]!, category: index)
                    }
                }
                .padding(.all)
            }
            .onAppear {
                viewModel.updateProducts()
            }
        }.background(Color(backgroundColor))
            
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
