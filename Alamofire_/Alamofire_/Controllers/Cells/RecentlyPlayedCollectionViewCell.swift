//
//  HomePageCollectionViewCell.swift
//  Alamofire_
//
//  Created by Mac on 08/07/2023.
//

import UIKit
import Alamofire

class RecentlyPlayedCollectionViewCell: UICollectionViewCell {
    let identifier = "RecentlyPlayedCollectionViewCell"
    
    //let nameLabel = Label(label: "", textColor: .brown)
    
    let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.layer.cornerRadius = 47
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
        self.addSubview(imageView)
        
        NSLayoutConstraint.activate([

        imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        imageView.heightAnchor.constraint(equalToConstant: 100),
        imageView.widthAnchor.constraint(equalToConstant: 100),
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -3)
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
        if let imageUrl = URL(string: album.cover) {
                downloadImage(from: imageUrl) { [weak self] image in
                    DispatchQueue.main.async {
                        self?.imageView.image = image
                    }
                }
            }
        }
}
