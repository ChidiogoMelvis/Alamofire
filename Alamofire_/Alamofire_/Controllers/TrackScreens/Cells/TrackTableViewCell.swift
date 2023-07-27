//
//  TrackTableViewCell.swift
//  Alamofire_
//
//  Created by Mac on 27/07/2023.
//

import UIKit

class TrackTableViewCell: UITableViewCell {
    
    let identifier = "TrackTableViewCell"
    
    let nameLabel = Label(label: "", textColor: .black)

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        // Configure the view for the selected state
    }
    
    func setupViews() {
            self.addSubview(nameLabel)
            
            NSLayoutConstraint.activate([
    
                nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
                nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
                //nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
                nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8)
            ])
        }
    
//    func configure(album: Datum) {
//        nameLabel.text = album.title
//    }

}
