//
//  FilterView.swift
//  EdvoraTest
//
//  Created by FloreaIulian on 1/17/22.
//

import SwiftUI

struct FilterCel: View {
    @State private var isExpanded = false
    var colorArrow = UIColor(red: 0.646, green: 0.646, blue: 0.646, alpha: 1).cgColor
    var celColor = UIColor(red: 0.138, green: 0.138, blue: 0.138, alpha: 1).cgColor
    var backgroundColor = UIColor(red: 0.075, green: 0.075, blue: 0.075, alpha: 1).cgColor
    
    var body: some View {
        HStack(){
            DisclosureGroup("Filter", isExpanded: $isExpanded) {
                VStack {
                    Divider()
                    Text("Products")
                        .padding(.all)
                        .frame(width: 168.45, height: 37.5)
                        .background(Color(celColor))
                        .foregroundColor(.white)
                    Text("State")
                        .padding(.all)
                        .frame(width: 168.45, height: 37.5)
                        .background(Color(celColor))
                        .foregroundColor(.white)
                    Text("City")
                        .font(.title)
                        .padding(.all)
                        .frame(width: 168.45, height: 37.5)
                        .background(Color(celColor))
                        .foregroundColor(.white)
                }
            }.accentColor(Color(colorArrow))
                .font(.title)
                .padding(.all)
                .background(Color(backgroundColor))
                .cornerRadius(15)
                Spacer()
            Button {
                isExpanded = false
            } label: {
                Text("clear filter")
                    .padding(20)
                    .foregroundColor(.white)
            }
        }
        .padding(.all)
    }
}

struct FilterCel_Previews: PreviewProvider {
    static var previews: some View {
        FilterCel()
    }
}
