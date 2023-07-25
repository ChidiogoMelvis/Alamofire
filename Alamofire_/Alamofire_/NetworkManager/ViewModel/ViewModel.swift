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
     var playlist: Playlist?
    
    func fetchPlaylist(completion: @escaping (Error?) -> Void) {
        networking.fetchPlaylist { [weak self] result in
            switch result {
            case .success(let playlist):
                self?.playlist = playlist
                completion(nil)
            case .failure(let error):
                completion(error)
            }
        }
    }
}
