//
//  SearchPageViewController.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit

class SearchPageViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UISearchBarDelegate, DisplayPodcastDelegate{
    
    var podcasts = [Podcast] ()
    
    var filteredPodcasts = [Podcast]()
    
    var networking = Networking()
    
    let searchLabel = Label(label: "Search", textColor: .white)
    
    //let cameraButton = Button(image: UIImage(named: "camera"),  label: "", btnColor: .clear)
    
    lazy var searchBar: UISearchBar = {
        let search = UISearchBar()
        search.translatesAutoresizingMaskIntoConstraints = false
        search.placeholder = "Your favorites podcasts"
        search.delegate = self
        return search
}()

    lazy var searchCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 30, left: 8, bottom: 30, right: 8)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SearchCollectionViewCell.self, forCellWithReuseIdentifier: "SearchCollectionViewCell")
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        fetchPodcasts()
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            filterPodcasts(for: searchText)
        }
        
        func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searchBar.text = nil
            searchBar.resignFirstResponder()
            filterPodcasts(for: nil)
        }
        
    func filterPodcasts(for searchText: String?) {
        if let searchText = searchText, !searchText.isEmpty {
            filteredPodcasts = podcasts.filter { podcast in
                return podcast.trackName.range(of: searchText, options: .caseInsensitive) != nil
            }
        } else {
            filteredPodcasts = []
        }
        searchCollectionView.reloadData()
    }
    
    func fetchPodcasts() {
            networking.fetchMusicVideos { [weak self] result in
                switch result {
                case .success(let welcome):
                    self?.podcasts = welcome.results
                    self?.filteredPodcasts = welcome.results 
                    DispatchQueue.main.async {
                        self?.searchCollectionView.reloadData()
                    }
                case .failure(let error):
                    print("Error fetching data: \(error)")
                }
            }
        }
    
    func didSelectPodcast(_podcast: Podcast) {
        let vc = DisplayVideoViewController()
        vc.podcast = podcasts
        navigationController?.pushViewController(vc, animated: true)
    }
    
}
