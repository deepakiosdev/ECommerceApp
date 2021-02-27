//
//  Overview.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import Foundation


struct Overview: Codable {
    let overview: [OverviewItem]
}

struct OverviewItem: Codable {
    
    let name: String
    let value: String
    let sequence: Int
}
