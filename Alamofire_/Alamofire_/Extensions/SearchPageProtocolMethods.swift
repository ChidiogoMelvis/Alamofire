//
//  SearchPageProtocolMethods.swift
//  Alamofire_
//
//  Created by Mac on 12/07/2023.
//

import Foundation
import UIKit

extension SearchPageViewController {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredPodcasts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SearchCollectionViewCell", for: indexPath) as! SearchCollectionViewCell
        let podcast = filteredPodcasts[indexPath.item]
        cell.artistName.text = podcast.artistName
        cell.collectionName.text = podcast.collectionName
        if let artworkURL = URL(string: podcast.artworkUrl100) {
                DispatchQueue.global().async {
                    if let data = try? Data(contentsOf: artworkURL),
                       let image = UIImage(data: data) {
                        DispatchQueue.main.async {
                            cell.artworkImageView.image = image
                        }
                    }
                }
            }
//        cell.backgroundColor = .red
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 150)
    }
    
    
}
