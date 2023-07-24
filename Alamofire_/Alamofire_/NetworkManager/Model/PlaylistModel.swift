//
//  TopSongModel.swift
//  Alamofire_
//
//  Created by Mac on 24/07/2023.
//

import Foundation

// MARK: - Welcome
class Playlist: Codable {
    let toptags: Toptags

    init(toptags: Toptags) {
        self.toptags = toptags
    }
}

// MARK: - Toptags
class Toptags: Codable {
    let tag: [Tag]
    let attr: Attr?

    enum CodingKeys: String, CodingKey {
        case tag
        case attr
    }

    init(tag: [Tag], attr: Attr) {
        self.tag = tag
        self.attr = attr
    }
}

// MARK: - Attr
class Attr: Codable {
    let artist, album: String

    init(artist: String, album: String) {
        self.artist = artist
        self.album = album
    }
}

// MARK: - Tag
class Tag: Codable {
    let count: Int
    let name: String
    let url: String

    init(count: Int, name: String, url: String) {
        self.count = count
        self.name = name
        self.url = url
    }
}

