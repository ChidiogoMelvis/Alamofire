//
//  EditorCollectionViewCell.swift
//  Alamofire_
//
//  Created by Mac on 11/07/2023.
//

import UIKit
import Alamofire

class EditorsCollectionViewCell: UICollectionViewCell {
    
    let identifier = "EditorCollectionViewCell"
    
    let nameLabel = Label(label: "", textColor: .black)
    
    //let delegate: CollectionViewDelegate!
    
    let imageView: UIImageView = {
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
    
    func setupViews() {
        self.addSubview(nameLabel)
        self.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            imageView.heightAnchor.constraint(equalToConstant: 70),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            //nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8)
            
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
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
