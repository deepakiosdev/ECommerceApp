//
//  Orders.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import Foundation


enum OrderStatus: String {
    case Pending = "Pending"
    case Accepted = "Accepted"
    case Shipped = "Shipped"
}


enum OrderPaymentStatus: String {
    case Cod = "COD"
    case Paid = "PAID"
}

struct Orders: Codable {
    
    let pendingOrders: [Order]
    let acceptedOrders: [Order]
    let shippedOrders: [Order]
}

struct Order: Codable, Identifiable {
    
    let id = UUID()
    let orderId: String
    let quanitity: Int
    let price: String
    let dateAndTime: String
    let paymentStatus: String
    let imageName: String
    let status: String

}
