//
//  RMService.swift
//  RickAndMorty
//
//  Created by Thien Vu Le on Apr/23/23.
//

import Foundation

/// Primary API service object to get Rick and Morty data
final class RMService {
    
    /// Shared singleton instance
    static let shared = RMService()
    
    /// privatezed contructor
    private init() {}
    
    
    /// Send Rick and Morty API call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: the type of object that we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(_ request: RMRequest,
                                    expecting type: T.Type,
                        completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
