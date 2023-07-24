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
    
    func fetchPlaylist() {
        let apiKey = "3dba9713a1db6c1dc99dccc2bd9942a4"
                let url = "https://ws.audioscrobbler.com/2.0/?method=album.gettoptags&artist=radiohead&album=the%20bends&api_key=\(apiKey)&format=json"
                
                AF.request(url).responseDecodable(of: Playlist.self) { response in
                    switch response.result {
                    case .success(let data):
                        print(data)
                        let artist = data.toptags.attr?.artist
                        let album = data.toptags.attr?.album
                        
                        for tag in data.toptags.tag {
                            let tagName = tag.name
                            let tagCount = tag.count
                            let tagUrl = tag.url
                            print(tag.name)
                            print(tag.count)
                            print(tag.url)
                        }
                    case .failure(let error):
                        print("Error fetching data: \(error)")
                    }
                }
            }
        
    }

 
