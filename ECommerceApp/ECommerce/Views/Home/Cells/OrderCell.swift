//
//  OrderCell.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct OrderCell: View {
  
    let order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var body: some View {
        
        VStack(spacing: 12) {
             
             HStack() {
                Text(order.orderId)
                     .font(.custom(Constants.AppFont.mediumFont, size: 14))
                     .foregroundColor(.darkBlack)
                 
                 Spacer()
                 
                Text(order.dateAndTime)
                     .font(.custom(Constants.AppFont.regularFont, size: 13))
                     .foregroundColor(.warmGrey)

             }
            
            HStack() {
                
                Image.init(order.imageName)

                VStack(alignment: .leading) {
                   Text("\(order.quanitity) ITEM")
                        .font(.custom(Constants.AppFont.regularFont, size: 13))
                        .foregroundColor(.warmGrey)
                    
                   Text(order.price)
                        .font(.custom(Constants.AppFont.mediumFont, size: 15))
                        .foregroundColor(.niceBlue)

                }
                
                Spacer()
                
                let color = Color.paymentStatusColor(for: OrderPaymentStatus(rawValue: order.paymentStatus) ?? OrderPaymentStatus.Paid)
              
                Text(order.paymentStatus.uppercased())
                    .font(.custom(Constants.AppFont.regularFont, size: 14))
                    .bold()
                    .foregroundColor(color)
                    .background(color).opacity(0.4)
                    .frame(width: 60, height: 30, alignment: .center)
                    .cornerRadius(3.0)
            }
            
            
            if (order.status.uppercased() == OrderStatus.Accepted.rawValue.uppercased()) {
               
                HStack(spacing: 12) {
                                      
                    Button(action: {
                        print("Cancel Order button pressed")
                    }) {
                        
                        Text(Constants.Strings.cancelOrder)
                            .font(.custom(Constants.AppFont.regularFont, size: 14))
                            .foregroundColor(.cherryRed)
                        
                    }
                    .frame(width: 130, height: 40, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.cherryRed, lineWidth: 1)
                    )

                    Spacer()
                    
                    Button(action: {
                        print("Ship Order button pressed")
                    }) {
                        
                        Text(Constants.Strings.shipOrder)
                            .font(.custom(Constants.AppFont.regularFont, size: 14))
                            .foregroundColor(.defaultWhite)
                        
                    }
                    .frame(width: 130, height: 40, alignment: .center)
                    .background(Color.dustyOrange)
                    .cornerRadius(6.0)
                }
            }
        }
        .padding(.all, Constants.padding)
        .background(Color.defaultWhite)
        .cornerRadius(6)
        .shadow(color: .darkBlack4, radius: 6, x: 0, y: 2)
        
    }
}
