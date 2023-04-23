//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Thien Vu Le on Apr/23/23.
//

import Foundation

// MARK: - RMCharacter

// MARK: - Result
struct RMCharacter: Codable {
    let id: Int?
    let name: String?
    let status: RMCharacterStatus?
    let species: String?
    let type: String?
    let gender: RMCharacterGender?
    let origin: RMOrigin?
    let location: RMSingleLocation?
    let image: String?
    let episode: [String]?
    let url: String?
    let created: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case status = "status"
        case species = "species"
        case type = "type"
        case gender = "gender"
        case origin = "origin"
        case location = "location"
        case image = "image"
        case episode = "episode"
        case url = "url"
        case created = "created"
    }
}
