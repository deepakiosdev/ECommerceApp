//
//  Overview.swift
//  ECommerceApp
//
//  Created by Dipak Pandey on 26/02/21.
//

import Foundation


struct Overview: Codable {
    let overviewList: [OverviewItem]
}

struct OverviewItem: Codable, Identifiable {
    let id = UUID()
    let name: String
    let value: String
    let sequence: Int
}
