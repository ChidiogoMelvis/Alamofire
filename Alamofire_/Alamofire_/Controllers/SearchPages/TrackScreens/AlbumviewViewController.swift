//
//  AlbumviewViewController.swift
//  Alamofire_
//
//  Created by Mac on 14/07/2023.
//

import UIKit

class AlbumviewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    lazy var albumTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(AlbumTableViewCell.self, forCellReuseIdentifier: "AlbumTableViewCell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumTableViewCell", for: indexPath) as! AlbumTableViewCell
        return cell
    }
}
