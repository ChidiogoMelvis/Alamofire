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

// MARK: - Result
class Podcast: Codable {
    let wrapperType: WrapperType
    let kind: Kind
    let artistID, trackID: Int?
    let artistName, trackName, trackCensoredName: String
    let artistViewURL, trackViewURL: String?
    let previewURL: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String
    let collectionPrice, trackPrice: Double?
    let releaseDate: String
    let collectionExplicitness, trackExplicitness: Explicitness
    let trackTimeMillis: Int?
    let country: Country
    let currency: Currency
    let primaryGenreName: PrimaryGenreName
    let collectionID: Int?
    let collectionName, collectionCensoredName: String?
    let collectionViewURL: String?
    let discCount, discNumber, trackCount, trackNumber: Int?
    let contentAdvisoryRating: String?

    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case artistID
        case trackID
        case artistName, trackName, trackCensoredName
        case artistViewURL
        case trackViewURL
        case previewURL
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, releaseDate, collectionExplicitness, trackExplicitness, trackTimeMillis, country, currency, primaryGenreName
        case collectionID
        case collectionName, collectionCensoredName
        case collectionViewURL
        case discCount, discNumber, trackCount, trackNumber, contentAdvisoryRating
    }

    init(wrapperType: WrapperType, kind: Kind, artistID: Int, trackID: Int, artistName: String, trackName: String, trackCensoredName: String, artistViewURL: String, trackViewURL: String, previewURL: String?, artworkUrl30: String, artworkUrl60: String, artworkUrl100: String, collectionPrice: Double?, trackPrice: Double?, releaseDate: String, collectionExplicitness: Explicitness, trackExplicitness: Explicitness, trackTimeMillis: Int?, country: Country, currency: Currency, primaryGenreName: PrimaryGenreName, collectionID: Int?, collectionName: String?, collectionCensoredName: String?, collectionViewURL: String?, discCount: Int?, discNumber: Int?, trackCount: Int?, trackNumber: Int?, contentAdvisoryRating: String?) {
        self.wrapperType = wrapperType
        self.kind = kind
        self.artistID = artistID
        self.trackID = trackID
        self.artistName = artistName
        self.trackName = trackName
        self.trackCensoredName = trackCensoredName
        self.artistViewURL = artistViewURL
        self.trackViewURL = trackViewURL
        self.previewURL = previewURL
        self.artworkUrl30 = artworkUrl30
        self.artworkUrl60 = artworkUrl60
        self.artworkUrl100 = artworkUrl100
        self.collectionPrice = collectionPrice
        self.trackPrice = trackPrice
        self.releaseDate = releaseDate
        self.collectionExplicitness = collectionExplicitness
        self.trackExplicitness = trackExplicitness
        self.trackTimeMillis = trackTimeMillis
        self.country = country
        self.currency = currency
        self.primaryGenreName = primaryGenreName
        self.collectionID = collectionID
        self.collectionName = collectionName
        self.collectionCensoredName = collectionCensoredName
        self.collectionViewURL = collectionViewURL
        self.discCount = discCount
        self.discNumber = discNumber
        self.trackCount = trackCount
        self.trackNumber = trackNumber
        self.contentAdvisoryRating = contentAdvisoryRating
    }
}

enum Explicitness: String, Codable {
    case cleaned = "cleaned"
    case notExplicit = "notExplicit"
}

enum Country: String, Codable {
    case usa = "USA"
}

enum Currency: String, Codable {
    case usd = "USD"
}

enum Kind: String, Codable {
    case musicVideo = "music-video"
}

enum PrimaryGenreName: String, Codable {
    case christian = "Christian"
    case hipHopRap = "Hip-Hop/Rap"
    case pop = "Pop"
    case rBSoul = "R&B/Soul"
}

enum WrapperType: String, Codable {
    case track = "track"
}
