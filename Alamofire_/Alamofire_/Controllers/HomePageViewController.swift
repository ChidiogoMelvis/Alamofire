//
//  HomePageViewController.swift
//  Alamofire
//
//  Created by Mac on 07/07/2023.
//

import UIKit
import AVFoundation

class HomePageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UITableViewDelegate, UITableViewDataSource {
    
    var randomColors = ["blue", "yellow", "red"]
    
    var notificationButton = ReusableButton(image: "notification")
    
    var orientationButton = ReusableButton(image: "orientationLock")
    
    var settingsButton = ReusableButton(image: "Settings")
    
    lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [notificationButton, orientationButton, settingsButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 20
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        return stack
    }()
    
    lazy var recentlyPlayedCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .brown
        collectionView.register(RecentlyPlayedCollectionViewCell.self, forCellWithReuseIdentifier: "RecentlyPlayedCollectionViewCell")
        return collectionView
    }()
    
    lazy var reviewTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .singleLine
        tableView.backgroundColor = .black
        tableView.register(ReviewTableViewCell.self, forCellReuseIdentifier: "ReviewTableViewCell")
        return tableView
    }()
    
    lazy var topSongCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .brown
        collectionView.register(TopSongCollectionViewCell.self, forCellWithReuseIdentifier: "TopSongCollectionViewCell")
        return collectionView
    }()
    
    lazy var editorsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .black
        collectionView.register(EditorsCollectionViewCell.self, forCellWithReuseIdentifier: "EditorCollectionViewCell")
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
    }

}

