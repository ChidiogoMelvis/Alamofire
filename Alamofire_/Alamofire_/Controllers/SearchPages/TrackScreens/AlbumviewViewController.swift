//
//  AlbumviewViewController.swift
//  Alamofire_
//
//  Created by Mac on 14/07/2023.
//

import UIKit

class AlbumviewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, AlbumTableViewButtonsDelegate {
    
    //var delegate: AlbumTableViewButtonsDelegate!
    
    lazy var albumTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.backgroundColor = .brown
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
        cell.menuButtonCell.setImage(UIImage(named: "menu"), for: .normal)
        cell.delegate = self
        return cell
    }
    
    func presentView( cell: AlbumTableViewCell) {
            let vc = AlbumControlViewController()
            vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
}

