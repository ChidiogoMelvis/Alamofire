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
        randomColors.count
    }
    
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 3
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomePageCollectionViewCell", for: indexPath) as! RecentlyPlayedCollectionViewCell
        cell.backgroundColor = .black
        return cell
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        switch indexPath.section {
//        case 0 :
//            return CGSize(width: 200, height: 200)
//        case 1 :
//            return CGSize(width: 150, height: 150)
//        default:
//            return CGSize(width: 100, height: 100)
//        }
//    }
    
}

