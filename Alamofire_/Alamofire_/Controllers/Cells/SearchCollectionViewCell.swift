//
//  SearchCollectionViewCell.swift
//  Alamofire_
//
//  Created by Mac on 15/07/2023.
//

import UIKit
import AVKit
import AVFoundation
import Alamofire

class SearchCollectionViewCell: UICollectionViewCell {
    
    let identifier = "SearchCollectionViewCell"
    
    var delegate: PlayVideoDelegate?
    
    let artistLabel = Label(label: "", textColor: .black)
    
    let titleLabel = Label(label: "", textColor: .black)
    
    let trackName = Label(label: "", textColor: .black)
    
    lazy var artworkImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var videoURL: URL?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    func setupViews() {
        self.addSubview(artworkImageView)
        self.addSubview(artistLabel)
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            artworkImageView.topAnchor.constraint(equalTo: self.topAnchor),
            artworkImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            artworkImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            artworkImageView.widthAnchor.constraint(equalToConstant: 140),
            artworkImageView.heightAnchor.constraint(equalToConstant: 80),
            
            artistLabel.topAnchor.constraint(equalTo: artworkImageView.bottomAnchor, constant: 5),
            artistLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            artistLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            
            titleLabel.topAnchor.constraint(equalTo: artistLabel.bottomAnchor, constant: 4),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
