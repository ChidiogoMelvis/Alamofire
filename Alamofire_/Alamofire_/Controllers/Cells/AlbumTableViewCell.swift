//
//  AlbumTableViewCell.swift
//  Alamofire_
//
//  Created by Mac on 16/07/2023.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {
    
    let identifier = "AlbumTableViewCell"
    
    var menuButtonCell = Button(image: UIImage(named: ""))

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        // Configure the view for the selected state
    }
    
    func setupViews() {
        self.addSubview(menuButtonCell)
        
        NSLayoutConstraint.activate([
            menuButtonCell.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            menuButtonCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14)
        ])
    }
    
//    func configureButton(withImage image: UIImage) {
//            menuButtonCell.setImage(image, for: .normal)
//        }

}
