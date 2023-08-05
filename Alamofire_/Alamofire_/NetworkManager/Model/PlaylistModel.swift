//
//  TopSongModel.swift
//  Alamofire_
//
//  Created by Mac on 24/07/2023.
//
import Foundation

// MARK: - Welcome
class Playlist: Codable {
    let headers: Headers
    let results: [Datum]

    init(headers: Headers, results: [Datum]) {
        self.headers = headers
        self.results = results
    }
}

// MARK: - Headers
class Headers: Codable {
    let status: String
    let code: Int
    let errorMessage, warnings: String?
    let resultsCount: Int?
    let next: String?

    enum CodingKeys: String, CodingKey {
        case status, code
        case errorMessage
        case warnings
        case resultsCount
        case next
    }

    init(status: String, code: Int, errorMessage: String, warnings: String, resultsCount: Int, next: String) {
        self.status = status
        self.code = code
        self.errorMessage = errorMessage
        self.warnings = warnings
        self.resultsCount = resultsCount
        self.next = next
    }
}

// MARK: - Result
class Datum: Codable {
    var id, name: String
    let duration: Int
    let artistID: String?
    let artistName: ArtistName?
    let artistIdstr: ArtistIdstr?
    let albumName: AlbumName?
    let albumID, licenseCcurl: String?
    let position: Int
    let releasedate: String
    let albumImage, audio, audiodownload: String?
    let prourl: String
    let shorturl, shareurl: String
    let audiodownloadAllowed: Bool?
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, name, duration
        case artistID
        case artistName
        case artistIdstr
        case albumName
        case albumID
        case licenseCcurl
        case position, releasedate
        case albumImage
        case audio, audiodownload, prourl, shorturl, shareurl
        case audiodownloadAllowed
        case image
    }

    init(id: String, name: String, duration: Int, artistID: String, artistName: ArtistName, artistIdstr: ArtistIdstr, albumName: AlbumName, albumID: String, licenseCcurl: String, position: Int, releasedate: String, albumImage: String, audio: String, audiodownload: String, prourl: String, shorturl: String, shareurl: String, audiodownloadAllowed: Bool, image: String) {
        self.id = id
        self.name = name
        self.duration = duration
        self.artistID = artistID
        self.artistName = artistName
        self.artistIdstr = artistIdstr
        self.albumName = albumName
        self.albumID = albumID
        self.licenseCcurl = licenseCcurl
        self.position = position
        self.releasedate = releasedate
        self.albumImage = albumImage
        self.audio = audio
        self.audiodownload = audiodownload
        self.prourl = prourl
        self.shorturl = shorturl
        self.shareurl = shareurl
        self.audiodownloadAllowed = audiodownloadAllowed
        self.image = image
    }
}

enum AlbumName: String, Codable {
    case mindAsylum = "Mind Asylum"
    case premiersJets = "Premiers Jets"
    case the3SaucissesDansUneBulle = "3 Saucisses Dans Une Bulle"
}

enum ArtistIdstr: String, Codable {
    case skaut = "skaut"
    case triface = "triface"
}

enum ArtistName: String, Codable {
    case skaut = "Skaut"
    case triFace = "TriFace"
}


