//
//  RMOrigin.swift
//  RickAndMorty
//
//  Created by Thien Vu Le on Apr/23/23.
//

import Foundation

// MARK: - Origin
struct RMOrigin: Codable {
    let name: String?
    let url: String?

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}
