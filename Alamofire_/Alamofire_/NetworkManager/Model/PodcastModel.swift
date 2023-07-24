//
//  Model.swift
//  Alamofire_
//
//  Created by Mac on 23/07/2023.
//

import Foundation

// MARK: - Welcome
class Welcome: Codable {
    let resultCount: Int
    let results: [Podcast]

    init(resultCount: Int, results: [Podcast]) {
        self.resultCount = resultCount
        self.results = results
    }
}

// MARK: - Podcast
class Podcast: Codable {
    let artistName: String
    let collectionName: String
    let trackName: String
    let artworkUrl100: String
    let collectionViewURL: String

    enum CodingKeys: String, CodingKey {
        case artistName, collectionName, trackName, artworkUrl100, collectionViewURL
    }

    init(artistName: String, collectionName: String, trackName: String, artworkUrl100: String, collectionViewURL: String) {
        self.artistName = artistName
        self.collectionName = collectionName
        self.trackName = trackName
        self.artworkUrl100 = artworkUrl100
        self.collectionViewURL = collectionViewURL
    }
}
