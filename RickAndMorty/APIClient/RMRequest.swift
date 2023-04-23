//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Thien Vu Le on Apr/23/23.
//

import Foundation

/// Object that represents a single API call
final class RMRequest {
    
    
    /// API Constant
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// Desire Endpoint
    private let endpoint: RMEndpoint
    
    /// Path Component API if any
    private let pathComponent: Set<String>
    
    /// Query Parameter API if any
    private let queryParameters: [URLQueryItem]
    
    
    /// Constructed url for api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponent.isEmpty {
            string += "/"
            pathComponent.forEach ({
                string += "\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    //MARK: - Public
    
    /// Computed & contructed API URL
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// Desired HTTP Method
    public let httpMethod = "GET"
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target endpoint
    ///   - pathComponent: Collection of path components
    ///   - queryParameters: Collection of query parameters
    public init(endpoint: RMEndpoint,
         pathComponent: Set<String> = [],
         queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponent = pathComponent
        self.queryParameters = queryParameters
    }
}
