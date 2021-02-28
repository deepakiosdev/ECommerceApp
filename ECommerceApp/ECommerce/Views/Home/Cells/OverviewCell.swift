//
//  OverviewCell.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct OverviewCell: View {
    
    private let overViewItem: OverviewItem

    init(overViewItem: OverviewItem) {
        self.overViewItem = overViewItem
    }
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(overViewItem.name.uppercased())
                .font(.custom(Constants.AppFont.regularFont, size: 12))
                .foregroundColor(.warmGrey)
                .padding(.bottom, 4)
            
            Text(overViewItem.value)
                .font(.custom(Constants.AppFont.mediumFont, size: 24))
                .foregroundColor(.darkBlack)
            
        }.frame(minWidth: 100, maxWidth: .infinity, minHeight: 64, maxHeight: .infinity, alignment: .leading)
        .padding(.all, Constants.padding)
        .background(Color.defaultWhite)
        .cornerRadius(6)
        .shadow(color: .darkBlack4, radius: 6, x: 0, y: 2)

    }
    
}

