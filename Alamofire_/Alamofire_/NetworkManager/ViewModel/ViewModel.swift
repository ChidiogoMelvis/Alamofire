//
//  ViewModel.swift
//  Alamofire_
//
//  Created by Mac on 25/07/2023.
//

import Foundation
import Alamofire

class PlaylistViewModel {
    let networking = Networking()
    func searchAlbum(query: String, completion: @escaping (Result<Playlist, Error>) -> Void) {
            let url = //"https://api.deezer.com/1.0/search/album?q=\(query)"
   "https://api.jamendo.com/v3.0/tracks/?client_id=132a4b14"
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
