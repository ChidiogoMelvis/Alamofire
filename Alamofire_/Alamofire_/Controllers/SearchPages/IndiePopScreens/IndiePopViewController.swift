//
//  IndiePopViewController.swift
//  Alamofire_
//
//  Created by Mac on 21/07/2023.
//

import UIKit

class IndiePopViewController: UIViewController {
    
    lazy var searchBar: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.placeholder = "Find in playlist"
        return search
    }()
    
    let sortButton = Button(image: UIImage(named: ""), label: "Sort", btnColor: .white)

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .white
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    func setupViews() {
        view.addSubview(searchBar)
        view.addSubview(sortButton)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            searchBar.widthAnchor.constraint(equalToConstant: 250),
            searchBar.heightAnchor.constraint(equalToConstant: 40),
            
            sortButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            sortButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            sortButton.heightAnchor.constraint(equalToConstant: 40),
            sortButton.widthAnchor.constraint(equalToConstant: 80)
        ])
    }
}
