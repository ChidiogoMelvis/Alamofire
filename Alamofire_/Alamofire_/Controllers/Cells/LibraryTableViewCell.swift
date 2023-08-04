//
//  LibraryTableViewCell.swift
//  Alamofire_
//
//  Created by Mac on 22/07/2023.
//

import UIKit

class LibraryTableViewCell: UITableViewCell {
    
    let songLabel = Label(label: "", textColor: .black)
    
    let identifier = "LibraryTableViewCell"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.addSubview(songLabel)
        songLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        songLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14).isActive = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
