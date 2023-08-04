//
//  EditorsTrackListViewController.swift
//  Alamofire_
//
//  Created by Mac on 26/07/2023.
//

import UIKit
import AVFoundation

class EditorsTrackListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    var tracks: [Datum]
    
    var selectedCellIndexPath: IndexPath?
    
    init(tracks: [Datum]) {
        self.tracks = tracks
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
        NotificationCenter.default.addObserver(self, selector: #selector(didReceiveAlbumSelection(_:)), name: .albumSelected, object: nil)
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
    
    @objc func didReceiveAlbumSelection(_ notification: Notification) {
            if let selectedAlbum = notification.object as? Datum {
                let song = Song(datum: selectedAlbum)
                RealmManager.shared.saveSong(song)
            }
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tracks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TrackTableViewCell", for: indexPath) as! TrackTableViewCell
        let track = tracks[indexPath.row]
        cell.nameLabel.text = track.name
        cell.track = track
        cell.playButton.tintColor = .gray
        if cell.audioIsPlaying {
            cell.showPauseButton()
        } else {
            cell.showPlayButton()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
}
