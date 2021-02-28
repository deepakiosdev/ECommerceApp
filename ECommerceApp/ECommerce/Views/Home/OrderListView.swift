//
//  OrderListView.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import SwiftUI

struct OrderListView: View {

    @ObservedObject var viewModel = HomeViewModel()

    var body: some View {
       
        VStack(alignment: .leading) {
            
            HStack() {
                Text(Constants.Strings.activeOrders)
                    .font(.custom(Constants.AppFont.mediumFont, size: 16))
                    .foregroundColor(.darkBlack)
                
                Spacer()
                
                Button(action: {
                    print("View All button pressed")
                }) {
                    Text(Constants.Strings.viewAll)
                        .font(.custom(Constants.AppFont.regularFont, size: 14))
                        .foregroundColor(.warmGrey)
                    
                    Image.init(Constants.Images.rightArrow)
                }
            }
            
            OrderTypeListView()
            .padding(.top, Constants.padding)
            
            OrdersListView(viewModel.orderStatus ?? .Accepted)
            .padding(.top, Constants.padding)
        }
    }
}


private extension OrderListView {
    
    func OrderTypeListView() -> some View {
        
        return
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(spacing: 16) {
                    
                    if let pendingOrders = viewModel.orders?.pendingOrders, pendingOrders.count > 0 {
                        OrderTypeCell.init(name: Constants.Strings.pending, count: pendingOrders.count, isSelected: viewModel.orderStatus == .Pending).onTapGesture {
                            print("pendingOrders clicked")
                        }
                    }
                    
                    if let acceptedOrders = viewModel.orders?.acceptedOrders, acceptedOrders.count > 0 {
                        OrderTypeCell.init(name: Constants.Strings.accepted, count: acceptedOrders.count, isSelected: viewModel.orderStatus == .Accepted).onTapGesture {
                            print("acceptedOrders clicked")

                        }
                    }
                    
                    if let shippedOrders = viewModel.orders?.shippedOrders, shippedOrders.count > 0 {
                        OrderTypeCell.init(name: Constants.Strings.shipped, count: shippedOrders.count, isSelected: viewModel.orderStatus == .Shipped).onTapGesture {
                            print("shippedOrders clicked")
                        }
                    }
                }
            })
    }
    
    
    func OrdersListView(_ selectedOrderType: OrderStatus) -> some View {
        
        return
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(spacing: 12) {
                    
                    switch selectedOrderType {
                    case .Pending :
                        
                        if let orders = viewModel.orders?.pendingOrders, orders.count > 0 {
                            ForEach(orders, content: OrderCell.init(order: ))
                        }
                        
                    case .Accepted :
                        if let orders = viewModel.orders?.acceptedOrders, orders.count > 0 {
                            ForEach(orders, content: OrderCell.init(order: ))
                        }
                        
                    case .Shipped :
                        if let orders = viewModel.orders?.shippedOrders, orders.count > 0 {
                            ForEach(orders, content: OrderCell.init(order: ))
                        }
                    }
                    
                }
            })
    }
}
    
