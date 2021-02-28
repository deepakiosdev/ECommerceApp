//
//  HomeViewModel.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import Foundation
import Combine


class HomeViewModel: ObservableObject {
    
    @Published var sharing: Sharing?
    @Published var orders: Orders?
    @Published var overview: Overview?
    
    private var disposables = Set<AnyCancellable>()
    
    init() {
        loadData()
    }

    private func loadData() {
        
        if let result = try? Sharing.fromJSON(String(describing: Sharing.self)) as Sharing? {
                sharing = result
            }
            
            if let result = try? Overview.fromJSON(String(describing: Overview.self)) as Overview? {
                overview = result
            }

            if let result = try? Orders.fromJSON(String(describing: Orders.self)) as Orders? {

                var tempOrders = result
                
                if let pendingOrder = result.pendingOrders.first {
                    tempOrders.pendingOrders = Array.init(repeating: pendingOrder, count: 129)
                }
                
                if let shippedOrder = result.shippedOrders.first {
                    tempOrders.shippedOrders = Array.init(repeating: shippedOrder, count: 22)
                }
                orders = tempOrders

            }
            
    }

}
