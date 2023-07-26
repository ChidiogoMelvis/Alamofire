//
//  RecentlyPlayedCollectionView.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import Foundation
import UIKit

extension HomePageViewController {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case recentlyPlayedCollectionView:
            return albums.count
        case reviewsCollectionView:
            return albums.count
        case topSongCollectionView:
            return albums.count
        case editorsCollectionView:
            return albums.count
        default:
            return 0
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case recentlyPlayedCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentlyPlayedCollectionViewCell", for: indexPath) as! RecentlyPlayedCollectionViewCell
            let tag = albums[indexPath.item]
                cell.configure(with: tag)
            //cell.backgroundColor = .brown
            cell.layer.cornerRadius = 50
            return cell
        case reviewsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewCollectionViewCell", for: indexPath) as! ReviewsCollectionViewCell
            let tag = albums[indexPath.item]
                cell.configure(with: tag)
            //cell.backgroundColor = .lightGray
            cell.layer.cornerRadius = 10
            return cell
        case topSongCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopSongCollectionViewCell", for: indexPath) as! TopSongCollectionViewCell
            let tag = albums[indexPath.item]
                cell.configure(with: tag)
            //cell.backgroundColor = .gray
            cell.layer.cornerRadius = 10
            return cell
        case editorsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EditorCollectionViewCell", for: indexPath) as! EditorsCollectionViewCell
            let tag = albums[indexPath.item]
                cell.configure(with: tag)
            //cell.backgroundColor = .brown
            cell.layer.cornerRadius = 10
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case recentlyPlayedCollectionView:
            return CGSize(width: 100, height: 100)
        case reviewsCollectionView:
            return CGSize(width: 100, height: 100)
        case topSongCollectionView:
            return CGSize(width: 100, height: 100)
        case editorsCollectionView:
            return CGSize(width: 100, height: 100)
        default:
            return CGSize(width: 50, height: 50)
        }
    }
}
