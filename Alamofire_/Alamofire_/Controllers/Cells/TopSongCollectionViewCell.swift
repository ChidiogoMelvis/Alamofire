//
//  TopSongCollectionViewCell.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit
import Alamofire

class TopSongCollectionViewCell: UICollectionViewCell {
    let identifier = "TopSongCollectionViewCell"
    
    let nameLabel = Label(label: "", textColor: .brown)
    
    let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            //imageView.contentMode = .scaleAspectFit
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
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
        
        NSLayoutConstraint.activate([
        imageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
        
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
                ])
            }
    
    
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
        nameLabel.text = album.title
            if let imageUrl = URL(string: album.cover) {
                downloadImage(from: imageUrl) { [weak self] image in
                    DispatchQueue.main.async {
                        self?.imageView.image = image
                    }
                }
            }
        }
}
