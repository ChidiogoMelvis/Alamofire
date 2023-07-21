//
//  AlbumControlViewController.swift
//  Alamofire_
//
//  Created by Mac on 14/07/2023.
//

import UIKit

class EllipsisViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let topView = CustomView(view: UIImage(named: ""), color: .brown)
    
    lazy var ellipsisTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(EllipsisTableViewCell.self, forCellReuseIdentifier: "EllipsisTableViewCell")
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .lightGray
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EllipsisTableViewCell", for: indexPath) as! EllipsisTableViewCell
        return cell
    }
    
}
