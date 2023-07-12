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
            return 3
        case reviewCollectionView:
            return 4
        case topSongCollectionView:
            return 3
        case editorsCollectionView:
            return 4
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
            cell.backgroundColor = .brown
            cell.layer.cornerRadius = 75
            return cell
        case reviewCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewCollectionViewCell", for: indexPath) as! ReviewCollectionViewCell
            cell.backgroundColor = .lightGray
            return cell
        case topSongCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopSongCollectionViewCell", for: indexPath) as! TopSongCollectionViewCell
            cell.backgroundColor = .gray
            return cell
        case editorsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EditorCollectionViewCell", for: indexPath) as! EditorsCollectionViewCell
            cell.backgroundColor = .brown
            return cell
        default:
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case recentlyPlayedCollectionView:
            return CGSize(width: 150, height: 150)
        case reviewCollectionView:
            return CGSize(width: 200, height: 200)
        case topSongCollectionView:
            return CGSize(width: 200, height: 200)
        case editorsCollectionView:
            return CGSize(width: 200, height: 200)
        default:
            return CGSize(width: 50, height: 50)
        }
    }
}
