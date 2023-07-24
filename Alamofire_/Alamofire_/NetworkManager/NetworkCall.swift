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
                            print(podcast.collectionViewURL)
                        }
                    case .failure(let error):
                        print("Error fetching data: \(error)")
                    }
                }
    }
    
    func fetchPlaylist()
    {
        
            }
        }

 
