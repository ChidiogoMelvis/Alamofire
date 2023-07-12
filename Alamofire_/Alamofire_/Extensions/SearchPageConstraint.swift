//
//  SearchPageConstraint.swift
//  Alamofire_
//
//  Created by Mac on 12/07/2023.
//

import Foundation
import UIKit

extension SearchPageViewController {
    func setupViews() {
        view.addSubview(searchLabel)
        view.addSubview(cameraButton)
        view.addSubview(searchBar)
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            searchLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            searchLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            cameraButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            cameraButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
            searchBar.topAnchor.constraint(equalTo: searchLabel.bottomAnchor, constant: 20),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
            
        ])
    }
}
