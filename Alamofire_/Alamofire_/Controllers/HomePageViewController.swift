//
//  HomePageViewController.swift
//  Alamofire
//
//  Created by Mac on 07/07/2023.
//

import UIKit
import AVFoundation
import Alamofire

class HomePageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, EditorsCollectionViewDelegate {
   
    var playlistViewModel = PlaylistViewModel()
    
    var albums: [Datum] = []
    
    var audioPlayer: AVPlayer?
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        return scrollView
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var recentlyPlayedCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(RecentlyPlayedCollectionViewCell.self, forCellWithReuseIdentifier: "RecentlyPlayedCollectionViewCell")
        return collectionView
    }()
    
    lazy var reviewsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ReviewsCollectionViewCell.self, forCellWithReuseIdentifier: "ReviewCollectionViewCell")
        return collectionView
    }()
    
    lazy var topSongCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(TopSongCollectionViewCell.self, forCellWithReuseIdentifier: "TopSongCollectionViewCell")
        return collectionView
    }()
    
    lazy var editorsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(EditorsCollectionViewCell.self, forCellWithReuseIdentifier: "EditorCollectionViewCell")
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setTitleColor()
        title = "Home"
        fetchPlaylist()
        //networking.fetchPodcasts()
        
    }
    
    func setTitleColor() {
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }

    func fetchPlaylist() {
        playlistViewModel.searchAlbum(query: "Thriller") { [weak self] result in
                    switch result {
                    case .success(let playlist):
                        self?.albums = playlist.results
                        DispatchQueue.main.async {
                            self?.recentlyPlayedCollectionView.reloadData()
                            self?.reviewsCollectionView.reloadData()
                            self?.topSongCollectionView.reloadData()
                            self?.editorsCollectionView.reloadData()
                        }
                    case .failure(let error):
                        print("Error fetching albums: \(error)")
                    }
            }
    }

}

