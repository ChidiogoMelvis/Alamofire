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
        return 5
        
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
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            if indexPath.item < 1 {
                let viewController = RecentlyPlayedViewController()
                navigationController?.pushViewController(viewController, animated: true)
                self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            } else if indexPath.item == 1 {
                let viewController = IndiePopViewController()
                navigationController?.pushViewController(viewController, animated: true)
                self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
            }
        default:
            break
        }
    }
    
}
