//
//  EllipsisViewControllerConstraint.swift
//  Alamofire_
//
//  Created by Mac on 21/07/2023.
//

import Foundation
import UIKit

extension EllipsisViewController {
    func setupViews() {
        view.addSubview(topView)
        view.addSubview(ellipsisTableView)
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            topView.heightAnchor.constraint(equalToConstant: 150),
            
            ellipsisTableView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 100),
            ellipsisTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            ellipsisTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ellipsisTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
}
