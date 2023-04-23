//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Thien Vu Le on Apr/23/23.
//

import Foundation

// MARK: - RMLocation
struct RMLocation: Codable {
    let id: Int?
    let name: String?
    let type: String?
    let dimension: String?
    let residents: [String]?
    let url: String?
    let created: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case type = "type"
        case dimension = "dimension"
        case residents = "residents"
        case url = "url"
        case created = "created"
    }
}
