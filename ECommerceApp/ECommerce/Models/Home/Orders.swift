//
//  Orders.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import Foundation


struct Orders: Codable {
    let orders: [Order]
}

struct Order: Codable {
    
    let orderId: String
    let quanitity: Int
    let price: String
    let dateAndTime: String
    let paymentStatus: String
}
