//
//  DogBreed.swift
//  DogBreedsInfo
//
//  Created by Hasan Zaidi on 6/9/25.
//

import Foundation

struct DogBreed: Decodable {
    let message: [String]
}

struct DogImage: Identifiable, Hashable {
    let id = UUID()
    let url: String
}
