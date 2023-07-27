//
//  EditorsTrackListViewController.swift
//  Alamofire_
//
//  Created by Mac on 26/07/2023.
//

import UIKit

class EditorsTrackListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tracks: [Datum] = []
    
    lazy var trackTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TrackTableViewCell.self, forCellReuseIdentifier: "TrackTableViewCell")
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupObjects()
        // Do any additional setup after loading the view.
    }
    
    func setupObjects() {
        
        view.addSubview(trackTableView)
        
        NSLayoutConstraint.activate([
            trackTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            trackTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trackTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            trackTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackTableViewCell", for: indexPath) as! TrackTableViewCell
        let track = tracks[indexPath.row]
        cell.configure(album: track)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

}
