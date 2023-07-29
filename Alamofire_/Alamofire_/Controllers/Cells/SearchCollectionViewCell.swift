//
//  SearchCollectionViewCell.swift
//  Alamofire_
//
//  Created by Mac on 15/07/2023.
//

import UIKit

class SearchCollectionViewCell: UICollectionViewCell {
    
    let identifier = "SearchCollectionViewCell"
    
    //var delegate: DisplayPodcastDelegate?
    
    let artistName = Label(label: "", textColor: .black)
    
    let collectionName = Label(label: "", textColor: .black)
    
    let trackName = Label(label: "", textColor: .black)
    
    lazy var artworkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        
    }
    
    func setupViews() {
        self.addSubview(artworkImageView)
        self.addSubview(artistName)
        self.addSubview(collectionName)
        
        NSLayoutConstraint.activate([
            artworkImageView.topAnchor.constraint(equalTo: self.topAnchor),
            artworkImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            artworkImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            artistName.topAnchor.constraint(equalTo: artworkImageView.bottomAnchor, constant: 5),
            artistName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            artistName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            
            collectionName.topAnchor.constraint(equalTo: artistName.bottomAnchor, constant: 4),
            collectionName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            collectionName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8)
        ])
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
