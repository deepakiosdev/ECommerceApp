//
//  OrderListView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct OrderListView: View {

    let orders: Orders?
    
    var body: some View {
       
        VStack(alignment: .leading) {
            
            HStack() {
                Text(Constants.Strings.activeOrders)
                    .font(.custom(Constants.AppFont.mediumFont, size: 16))
                    .foregroundColor(Color.darkBlack)
                
                Spacer()
                
                Button(action: {
                    print("View All button pressed")
                }) {
                    Text(Constants.Strings.viewAll)
                        .font(.custom(Constants.AppFont.regularFont, size: 14))
                        .foregroundColor(Color.warmGrey)
                    
                    Image.init(Constants.Images.rightArrow)
                }
            }.padding(16)
            
            orderTypeListView
            .padding(.leading, 16)


        }
    }
}


extension OrderListView {
    
    var orderTypeListView: some View {
        ScrollView() {

        HStack {
            
                if let pendingOrders = orders?.pendingOrders, pendingOrders.count > 0 {
                    OrderTypeCell.init(name: Constants.Strings.pending, count: "129", isSelected: false)
                }
                
                if let acceptedOrders = orders?.acceptedOrders, acceptedOrders.count > 0 {
                    OrderTypeCell.init(name: Constants.Strings.accepted, count: "13", isSelected: true)
                }
                
                if let shippedOrders = orders?.shippedOrders, shippedOrders.count > 0 {
                    OrderTypeCell.init(name: Constants.Strings.shipped, count: "22", isSelected: false)
                }
                
            }
            
        }
        
    }
}
    
