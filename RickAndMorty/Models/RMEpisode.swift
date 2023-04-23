//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Thien Vu Le on Apr/23/23.
//

import Foundation

// MARK: - RMEpisode
struct RMEpisode: Codable {
    let id: Int?
    let name: String?
    let airDate: String?
    let episode: String?
    let characters: [String]?
    let url: String?
    let created: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case airDate = "air_date"
        case episode = "episode"
        case characters = "characters"
        case url = "url"
        case created = "created"
    }
}
