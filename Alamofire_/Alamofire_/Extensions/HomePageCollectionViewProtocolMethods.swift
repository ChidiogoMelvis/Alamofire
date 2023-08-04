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
            let album = albums[indexPath.item]
            cell.configure(with: album)
            
            return cell
        case reviewsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReviewCollectionViewCell", for: indexPath) as! ReviewsCollectionViewCell
            let album = albums[indexPath.item]
            cell.configure(with: album)
            return cell
        case topSongCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopSongCollectionViewCell", for: indexPath) as! TopSongCollectionViewCell
            let album = albums[indexPath.item]
            cell.configure(with: album)
            return cell
        case editorsCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "EditorCollectionViewCell", for: indexPath) as! EditorsCollectionViewCell
            let album = albums[indexPath.item]
            cell.configure(with: album)
            cell.delegate = self
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
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == reviewsCollectionView{
            
        }else if collectionView == topSongCollectionView {
            
        }else if collectionView == editorsCollectionView {
            let selectedAlbum = albums[indexPath.item]
            didSelectAlbum(_album: selectedAlbum)
        }
        
    }
    
    func didSelectAlbum(_album: Datum) {
        saveToLibrary(album: _album)
        let vc = EditorsTrackListViewController(tracks: albums)
        navigationController?.pushViewController(vc, animated: true)
        self.navigationController?.navigationBar.tintColor = .black
        
    }
    
    func saveToLibrary(album: Datum) {
        let song = Song(datum: album)
        RealmManager.shared.saveSong(song)
    }
    
}
