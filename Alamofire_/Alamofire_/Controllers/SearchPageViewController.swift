//
//  SearchPageViewController.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit

class SearchPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let searchLabel = Label(label: "Search")
    
    let cameraButton = Button(image: "camera")
    
    lazy var searchBar: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.placeholder = "Artist, songs or podcasts"
        return search
}()

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .gray
        tableView.register(SearchTableViewCell.self, forCellReuseIdentifier: "SearchTableViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        // Do any additional setup after loading the view.
    }
    

}
