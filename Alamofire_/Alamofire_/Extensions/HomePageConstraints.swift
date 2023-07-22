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
            scrollView.addSubview(containerView)
            containerView.addSubview(recentlyPlayedCollectionView)
            containerView.addSubview(reviewCollectionView)
            containerView.addSubview(topSongCollectionView)
            containerView.addSubview(editorsCollectionView)
            let scrollContent = scrollView.contentLayoutGuide
            let scrollFrame = scrollView.frameLayoutGuide
            
            NSLayoutConstraint.activate([
                stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
                stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
                
                scrollView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 10),
                scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                
                containerView.topAnchor.constraint(equalTo: scrollContent.topAnchor),
                containerView.leadingAnchor.constraint(equalTo: scrollContent.leadingAnchor),
                containerView.trailingAnchor.constraint(equalTo: scrollContent.trailingAnchor),
                containerView.bottomAnchor.constraint(equalTo: scrollContent.bottomAnchor),
                
                containerView.leadingAnchor.constraint(equalTo: scrollFrame.leadingAnchor),
                containerView.trailingAnchor.constraint(equalTo: scrollFrame.trailingAnchor),
                containerView.heightAnchor.constraint(equalToConstant: view.frame.height),
                
                recentlyPlayedCollectionView.topAnchor.constraint(equalTo: containerView.topAnchor),
                recentlyPlayedCollectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
                recentlyPlayedCollectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
                recentlyPlayedCollectionView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
                recentlyPlayedCollectionView.heightAnchor.constraint(equalToConstant: 150),
                
                reviewCollectionView.topAnchor.constraint(equalTo: recentlyPlayedCollectionView.bottomAnchor, constant: 50),
                reviewCollectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
                reviewCollectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
                reviewCollectionView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
                reviewCollectionView.heightAnchor.constraint(equalToConstant: 200),
                
                topSongCollectionView.topAnchor.constraint(equalTo: reviewCollectionView.bottomAnchor, constant: 50),
                topSongCollectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
                topSongCollectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
                topSongCollectionView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
                topSongCollectionView.heightAnchor.constraint(equalToConstant: 200),
                
                editorsCollectionView.topAnchor.constraint(equalTo: topSongCollectionView.bottomAnchor, constant: 50),
                editorsCollectionView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
                editorsCollectionView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
                editorsCollectionView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
                editorsCollectionView.heightAnchor.constraint(equalToConstant: 200)
            ])
        }


}
