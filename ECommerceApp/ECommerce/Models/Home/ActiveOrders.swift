//
//  ActiveOrders.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import Foundation

struct ActiveOrders: Codable {
    let activeOrders: [ActiveOrderItem]
}


struct ActiveOrderItem: Codable, Identifiable {
    let id = UUID()
    let name: String
    let count: String
    let sequence: Int
}
