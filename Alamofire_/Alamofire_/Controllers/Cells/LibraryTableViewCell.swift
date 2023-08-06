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
        setupViews()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        // Configure the view for the selected state
    }
    
    func setupViews() {
        self.addSubview(songLabel)
        
        NSLayoutConstraint.activate([
            songLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            songLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14)
        ])
    }

}
