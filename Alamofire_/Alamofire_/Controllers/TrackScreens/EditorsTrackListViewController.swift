//
//  EditorsTrackListViewController.swift
//  Alamofire_
//
//  Created by Mac on 26/07/2023.
//

import UIKit

class EditorsTrackListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tracks: [Datum]
    //var selectedAlbumIndex: Int
    
    init(tracks: [Datum]) {
        self.tracks = tracks
        //self.selectedAlbumIndex = selectedAlbumIndex
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        cell.nameLabel.text = tracks[indexPath.item].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }

}
