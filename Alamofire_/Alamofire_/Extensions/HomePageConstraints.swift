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
            view.addSubview(stackView)
            view.addSubview(scrollView)
            scrollView.addSubview(recentlyPlayedCollectionView)
            scrollView.addSubview(reviewCollectionView)
            scrollView.addSubview(topSongCollectionView)
            scrollView.addSubview(editorsCollectionView)
            
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
                stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
                
                scrollView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
                scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                
                recentlyPlayedCollectionView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                recentlyPlayedCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                recentlyPlayedCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                recentlyPlayedCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                recentlyPlayedCollectionView.heightAnchor.constraint(equalToConstant: 200),
                
                reviewCollectionView.topAnchor.constraint(equalTo: recentlyPlayedCollectionView.bottomAnchor, constant: 15),
                reviewCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                reviewCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                reviewCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                reviewCollectionView.heightAnchor.constraint(equalToConstant: 200),
                
                topSongCollectionView.topAnchor.constraint(equalTo: reviewCollectionView.bottomAnchor, constant: 10),
                topSongCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                topSongCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                topSongCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                topSongCollectionView.heightAnchor.constraint(equalToConstant: 200),
                
                editorsCollectionView.topAnchor.constraint(equalTo: topSongCollectionView.bottomAnchor, constant: 10),
                editorsCollectionView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                editorsCollectionView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                editorsCollectionView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                editorsCollectionView.heightAnchor.constraint(equalToConstant: 200)
            ])
        }


}
