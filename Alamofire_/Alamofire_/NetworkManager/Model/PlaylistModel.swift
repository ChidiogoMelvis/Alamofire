//
//  TopSongModel.swift
//  Alamofire_
//
//  Created by Mac on 24/07/2023.
//
import Foundation

// MARK: - Welcome
class Playlist: Codable {
    let data: [Datum]
    let total: Int
    let next: String

    init(data: [Datum], total: Int, next: String) {
        self.data = data
        self.total = total
        self.next = next
    }
}

// MARK: - Datum
class Datum: Codable {
    let id: Int
    let title: String
    let link, cover: String
    let coverSmall, coverMedium, coverBig, coverXl: String?
    let md5Image: String?
    let genreID, nbTracks: Int?
    let recordType: RecordTypeEnum?
    let tracklist: String
    let explicitLyrics: Bool?
    let artist: Artist
    let type: RecordTypeEnum

    enum CodingKeys: String, CodingKey {
        case id, title, link, cover
        case coverSmall
        case coverMedium
        case coverBig
        case coverXl
        case md5Image
        case genreID
        case nbTracks
        case recordType
        case tracklist
        case explicitLyrics
        case artist, type
    }

    init(id: Int, title: String, link: String, cover: String, coverSmall: String, coverMedium: String, coverBig: String, coverXl: String, md5Image: String, genreID: Int, nbTracks: Int, recordType: RecordTypeEnum, tracklist: String, explicitLyrics: Bool, artist: Artist, type: RecordTypeEnum) {
        self.id = id
        self.title = title
        self.link = link
        self.cover = cover
        self.coverSmall = coverSmall
        self.coverMedium = coverMedium
        self.coverBig = coverBig
        self.coverXl = coverXl
        self.md5Image = md5Image
        self.genreID = genreID
        self.nbTracks = nbTracks
        self.recordType = recordType
        self.tracklist = tracklist
        self.explicitLyrics = explicitLyrics
        self.artist = artist
        self.type = type
    }
}

// MARK: - Artist
class Artist: Codable {
    let id: Int
    let name: String
    let link, picture: String
    let pictureSmall, pictureMedium, pictureBig, pictureXl: String?
    let tracklist: String
    let type: ArtistType

    enum CodingKeys: String, CodingKey {
        case id, name, link, picture
        case pictureSmall
        case pictureMedium
        case pictureBig
        case pictureXl
        case tracklist, type
    }

    init(id: Int, name: String, link: String, picture: String, pictureSmall: String, pictureMedium: String, pictureBig: String, pictureXl: String, tracklist: String, type: ArtistType) {
        self.id = id
        self.name = name
        self.link = link
        self.picture = picture
        self.pictureSmall = pictureSmall
        self.pictureMedium = pictureMedium
        self.pictureBig = pictureBig
        self.pictureXl = pictureXl
        self.tracklist = tracklist
        self.type = type
    }
}

enum ArtistType: String, Codable {
    case artist = "artist"
}

enum RecordTypeEnum: String, Codable {
    case album = "album"
    case ep = "ep"
    case single = "single"
}
