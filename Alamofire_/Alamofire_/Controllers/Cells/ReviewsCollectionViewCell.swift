//
//  ReviewCollectionViewCell.swift
//  Alamofire_
//
//  Created by Mac on 12/07/2023.
//

import UIKit
import Alamofire

class ReviewsCollectionViewCell: UICollectionViewCell {
    let identifier = "ReviewCollectionViewCell"
    
    let nameLabel = Label(label: "", textColor: .black)
    
    var durationLabel = Label(label: "", textColor: .black)
    
    lazy var imageView: UIImageView = {
            let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
            return imageView
        }()
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            setupViews()
        }

        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupViews()
        }
    
    func setupViews() {
        self.addSubview(nameLabel)
        self.addSubview(imageView)
        self.addSubview(durationLabel)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 1),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
        
        durationLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
        durationLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])}
    
    func downloadImage(from url: URL, completion: @escaping (UIImage?) -> Void) {
           URLSession.shared.dataTask(with: url) { data, response, error in
               if let error = error {
                   print("Error downloading image: \(error)")
                   completion(nil)
                   return
               }

               if let data = data, let image = UIImage(data: data) {
                   completion(image)
               } else {
                   completion(nil)
               }
           }.resume()
       }

    func configure(with album: Datum) {
        nameLabel.text = album.name
        durationLabel.text = formatDuration(album.duration)
        if let imageUrl = URL(string: album.image) {
                downloadImage(from: imageUrl) { [weak self] image in
                    DispatchQueue.main.async {
                        self?.imageView.image = image
                    }
                }
            }
        }
    
    func formatDuration(_ duration: Int) -> String {
            let minutes = duration / 60
            let seconds = duration % 60
            return String(format: "%02d:%02d", minutes, seconds)
        }
}
