//
//  Model.swift
//  Alamofire_
//
//  Created by Mac on 23/07/2023.
//

import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let image: String
    let podcast: Podcast
    let titleOriginal: String

    enum CodingKeys: String, CodingKey {
        case image, podcast
        case titleOriginal
    }

    init(image: String, podcast: Podcast, titleOriginal: String) {
        self.image = image
        self.podcast = podcast
        self.titleOriginal = titleOriginal
    }
}

// MARK: - Podcast
class Podcast: Codable {
    let image: String
    let titleOriginal: String

    enum CodingKeys: String, CodingKey {
        case image
        case titleOriginal
    }

    init(image: String, titleOriginal: String) {
        self.image = image
        self.titleOriginal = titleOriginal
    }
}

