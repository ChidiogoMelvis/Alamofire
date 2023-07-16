//
//  AlbumviewViewcontrollerConstraint.swift
//  Alamofire_
//
//  Created by Mac on 16/07/2023.
//

import Foundation
import UIKit

extension AlbumviewViewController {
    func setupViews() {
        view.addSubview(albumTableView)
        
        NSLayoutConstraint.activate([
            albumTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            albumTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            albumTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            albumTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
