//
//  TrackViewController.swift
//  Alamofire_
//
//  Created by Mac on 14/07/2023.
//

import UIKit

class TrackViewController: UIViewController {
    
    let topView = CustomView(view: UIImage(named: ""), color: .gray)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        view.addSubview(topView)
        
        NSLayoutConstraint.activate([
            topView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            topView.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
    
}
