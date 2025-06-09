//
//  MockNetworkLayer.swift
//  DogBreedsInfo
//
//  Created by Hasan Zaidi on 6/9/25.
//

import Foundation

class MockNetworkLayer {
    func fetchDogImages(breed: String) async throws -> [DogImage] {
        guard let url = URL(string: "https://dog.ceo/api/breed/\(breed)/images") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(DogBreed.self, from: data)
        
        return decoded.message.map { DogImage(url: $0) }
    }
}
