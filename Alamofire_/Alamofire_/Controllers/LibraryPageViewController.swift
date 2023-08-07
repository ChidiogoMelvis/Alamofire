//
//  LibraryPageViewController.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit
import RealmSwift

class LibraryPageViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var librarySongs: Results<Song>?
    
    var notificationToken: NotificationToken?
    
    let playedSongs = Label(label: "Recently Played", textColor: .white)
    
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
        librarySongs = RealmManager.shared.getAllSongs()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return librarySongs?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LibraryTableViewCell", for: indexPath) as! LibraryTableViewCell
         let song = librarySongs?[indexPath.row]
        cell.songLabel.text = song?.title
        cell.durationLabel.text = formatDuration(song?.duration ?? 0)
            cell.backgroundColor = .darkGray
        //cell.songLabel.textColor = .white
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func setupViews() {
        view.addSubview(libraryTableView)
        view.addSubview(playedSongs)
        
        NSLayoutConstraint.activate([
            playedSongs.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            playedSongs.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            libraryTableView.topAnchor.constraint(equalTo: playedSongs.bottomAnchor, constant: 50),
            libraryTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            libraryTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            libraryTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10)
        ])
    }
    
    func formatDuration(_ duration: Int) -> String {
            let minutes = duration / 60
            let seconds = duration % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
    
    deinit {
          notificationToken?.invalidate()
      }
    
}
