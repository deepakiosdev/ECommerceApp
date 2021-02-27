//
//  HomeViewModel.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 27/02/21.
//

import Foundation
import Combine


class HomeViewModel: ObservableObject {
    
    @Published var homeHeader: HomeHeader?
    @Published var orders: Orders?
    @Published var overview: Overview?
    @Published var activeOrders: ActiveOrders?
    
    private var disposables = Set<AnyCancellable>()
    
    init() {
        loadData()
    }

    private func loadData() {
        
        if let result = try? HomeHeader.fromJSON(String(describing: HomeHeader.self)) as HomeHeader? {
                homeHeader = result
                print("HomeHeader----:\(String(describing: homeHeader))")
    
            }
            
            if let result = try? Overview.fromJSON(String(describing: Overview.self)) as Overview? {
                overview = result
                print("overview----:\(String(describing: overview))")
    
            }

    
            if let result = try? ActiveOrders.fromJSON(String(describing: ActiveOrders.self)) as ActiveOrders? {
                activeOrders = result
                print("activeOrders----:\(String(describing: activeOrders))")
            }

            if let result = try? Orders.fromJSON(String(describing: Orders.self)) as Orders? {
                orders = result
                print("orders----:\(String(describing: orders))")

            }
            
    }

}
