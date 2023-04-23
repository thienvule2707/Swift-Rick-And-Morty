//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Thien Vu Le on Apr/23/23.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        let reuqest = RMRequest(endpoint: .character,
                                pathComponent: ["1"],
                                queryParameters: [
                                    URLQueryItem(name: "name", value: "rick"),
                                    URLQueryItem(name: "status", value: "alive"),
                                ])
        
        print(reuqest.url)
        
        RMService.shared.execute(reuqest, expecting: RMCharacter.self) { result in
            switch result {
            case .success(let character):
                print(character)
            case .failure(let error):
                print(error)
            }
        }
    }
}
