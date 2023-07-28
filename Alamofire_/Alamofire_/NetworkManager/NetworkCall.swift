//
//  NetworkCall.swift
//  Alamofire_
//
//  Created by Mac on 08/07/2023.
//

import Foundation
import Alamofire

class Networking  {
    
    func fetchPodcasts()
    {
        let url = "https://itunes.apple.com/search?media=podcast&term=technology"
            AF.request(url).responseDecodable(of: Welcome.self) { response in
                    switch response.result {
                    case .success(let welcome):
                        for podcast in welcome.results {
                            print(podcast.artistName)
                            print(podcast.collectionName)
                            print(podcast.trackName)
                            print(podcast.artworkUrl100)
                            print(podcast.collectionViewURL as Any)
                        }
                    case .failure(let error):
                        print("Error fetching data: \(error)")
                    }
            }
    }

    func searchAlbum(query: String, completion: @escaping (Result<Playlist, Error>) -> Void) {
        let encodedQuery = query.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
        let urlString = "https://api.jamendo.com/v3.0/tracks/?client_id=132a4b14"

        AF.request(urlString).responseDecodable(of: Playlist.self) { response in
            switch response.result {
            case .success(let playlist):
                completion(.success(playlist))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }

}


 
