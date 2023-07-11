//
//  Constraints.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import Foundation
import UIKit

extension HomePageViewController {
    
    func setupViews() {
        view.addSubview(recentlyPlayedCollectionView)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
            recentlyPlayedCollectionView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
            recentlyPlayedCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            recentlyPlayedCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            //recentlyPlayedCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
            
            reviewTableView.topAnchor.constraint(equalTo: recentlyPlayedCollectionView.bottomAnchor, constant: 10),
            reviewTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            reviewTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
            topSongCollectionView.topAnchor.constraint(equalTo: reviewTableView.bottomAnchor, constant: 10),
            topSongCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            topSongCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
            editorsCollectionView.topAnchor.constraint(equalTo: topSongCollectionView.bottomAnchor, constant: 10),
            editorsCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            editorsCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14)
        ])
    }
}
