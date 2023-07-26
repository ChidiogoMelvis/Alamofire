//
//  ViewModel.swift
//  Alamofire_
//
//  Created by Mac on 25/07/2023.
//

import Foundation
import Alamofire

class PlaylistViewModel {
    
//     let networking = Networking()
//     var playlist: Playlist?
//
//    func fetchPlaylist(completion: @escaping (Error?) -> Void) {
//        networking.fetchPlaylist { [weak self] result in
//            switch result {
//            case .success(let playlist):
//                self?.playlist = playlist
//                completion(nil)
//            case .failure(let error):
//                completion(error)
//            }
//        }
//    }
    let networking = Networking()
    func searchAlbum(query: String, completion: @escaping (Result<Playlist, Error>) -> Void) {
            let url = "https://api.deezer.com/1.0/search/album?q=\(query)"
            
            AF.request(url).responseDecodable(of: Playlist.self) { response in
                switch response.result {
                case .success(let playlist):
                    completion(.success(playlist))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
}
