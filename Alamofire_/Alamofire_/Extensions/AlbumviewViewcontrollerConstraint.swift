//
//  AlbumviewViewcontrollerConstraint.swift
//  Alamofire_
//
//  Created by Mac on 16/07/2023.
//

import Foundation
import UIKit

extension RecentlyPlayedViewController {
    func setupViews() {
        view.addSubview(topView)
        view.addSubview(albumTableView)
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            topView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70),
            topView.heightAnchor.constraint(equalToConstant: 200),
            
            albumTableView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 80),
            albumTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            albumTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            albumTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
