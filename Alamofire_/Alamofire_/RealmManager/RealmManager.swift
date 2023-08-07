//
//  DataSource.swift
//  Alamofire_
//
//  Created by Mac on 03/08/2023.
//

import Foundation
import RealmSwift

class RealmManager {
    static let shared = RealmManager()
    
    private let realm: Realm
    
    private init() {
        do {
            realm = try Realm()
        } catch {
            fatalError("\(error.localizedDescription)")
        }
    }
    
    func saveSong(_ song: Song) {
        do {
            try realm.write {
                realm.add(song)
            }
        } catch {
            print("\(error.localizedDescription)")
        }
    }
    
    func deleteSong(_ song: Song) {
        do {
            try realm.write {
                realm.delete(song)
            }
        } catch {
            print("\(error.localizedDescription)")
        }
    }
    
    func getAllSongs() -> Results<Song> {
        return realm.objects(Song.self)
    }

}

