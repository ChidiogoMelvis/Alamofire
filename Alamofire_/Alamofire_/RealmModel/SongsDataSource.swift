//
//  SongsDataSource.swift
//  Alamofire_
//
//  Created by Mac on 02/08/2023.
//

import Foundation
import RealmSwift

class PlayedSongs {
    static let shared = PlayedSongs()
    var songs: Results<Song>!
    
    init() {
        let realm = try! Realm()
        songs = realm.objects(Song.self)
    }
    
    func getSongs() -> Results<Song> {
        return songs
    }
    
}
