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
        case recentlyPlayedCollectionView :
            return 3
        case topSongCollectionView :
            return 4
        default:
            return 5
        }
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case recentlyPlayedCollectionView :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RecentlyPlayedCollectionViewCell", for: indexPath) as! RecentlyPlayedCollectionViewCell
            cell.backgroundColor = .brown
        case editorsCollectionView :
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopSongCollectionViewCell", for: indexPath) as! TopSongCollectionViewCell
            cell.backgroundColor = .gray
        default:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EditorCollectionViewCell", for: indexPath) as! EditorCollectionViewCell
            cell.backgroundColor = .black
        }
        return UICollectionViewCell()
    
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        switch collectionView {
        case recentlyPlayedCollectionView :
            return CGSize(width: 200, height: 200)
        case topSongCollectionView :
            return CGSize(width: 150, height: 150)
        default:
            return CGSize(width: 100, height: 100)
        }
    }
    
}

