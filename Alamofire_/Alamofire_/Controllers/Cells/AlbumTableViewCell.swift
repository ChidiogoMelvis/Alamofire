//
//  AlbumTableViewCell.swift
//  Alamofire_
//
//  Created by Mac on 16/07/2023.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {
    
    let identifier = "AlbumTableViewCell"
    
    var delegate: AlbumTableViewButtonsDelegate!
    
    var menuButtonCell = Button(image: UIImage(named: ""),  label: "", btnColor: .clear)

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        menuButtonCell.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
        // Configure the view for the selected state
    }
    
    @objc func btnTapped() {
        self.delegate.presentView(cell: self)
    }
    
    func setupViews() {
        self.addSubview(menuButtonCell)
        
        NSLayoutConstraint.activate([
            menuButtonCell.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            menuButtonCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14)
        ])
    }

}
