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
                print("sharing----:\(String(describing: sharing))")
    
            }
            
            if let result = try? Overview.fromJSON(String(describing: Overview.self)) as Overview? {
                overview = result
                print("overviewList----:\(String(describing: overview))")
    
            }

            if let result = try? Orders.fromJSON(String(describing: Orders.self)) as Orders? {
                orders = result
                print("orders----:\(String(describing: orders))")

            }
            
    }

}
