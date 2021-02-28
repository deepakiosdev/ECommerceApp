//
//  OrderTypeCell.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct OrderTypeCell: View {
    
    let name: String
    let count: String
    let isSelected: Bool

    
    var body: some View {
        HStack() {
            Button(action: {
                print("\(name.capitalized) Order pressed")
            }) {
            
                Text(name.capitalized + " (\(count))")
                    .font(.custom(Constants.AppFont.mediumFont, size: 14))
                    .foregroundColor(isSelected ? .defaultWhite : .warmGrey)
            }
            .frame(width: 125, height: 32, alignment: .center)

        }
        .background(isSelected ? Color.niceBlue : Color.whiteTwo)
        .cornerRadius(16)
    }
}
