//
//  LibraryPageViewController.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit

class LibraryPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    lazy var libraryTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(LibraryTableViewCell.self, forCellReuseIdentifier: "LibraryTableViewCell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        title = "Library"
        // Do any additional setup after loading the view.
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LibraryTableViewCell", for: indexPath) as! LibraryTableViewCell
        return cell
    }
    
    func setupViews() {
        view.addSubview(libraryTableView)
        
        NSLayoutConstraint.activate([
            libraryTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            libraryTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            libraryTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            libraryTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

}
