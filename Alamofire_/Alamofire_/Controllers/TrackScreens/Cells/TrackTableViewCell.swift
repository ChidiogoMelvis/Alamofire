//
//  TrackTableViewCell.swift
//  Alamofire_
//
//  Created by Mac on 27/07/2023.
//

import UIKit
import AVFoundation

class TrackTableViewCell: UITableViewCell {
    
    let identifier = "TrackTableViewCell"
    
    var delegate: PlayAlbumDelegate?
    
    var track: Datum!
    
    var audioIsPlaying = false
    
    let nameLabel = Label(label: "", textColor: .black)
    
    let playButton = Button(image: UIImage(systemName: "play.fill"), label: "", btnColor: .black)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        playButton.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
    }
    
    func setupViews() {
        self.addSubview(nameLabel)
        self.addSubview(playButton)
        
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            nameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8),
            
            playButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 15),
            playButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            playButton.widthAnchor.constraint(equalToConstant: 40),
            playButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    @objc func btnTapped() {
        if let audioURLString = track.audio {
            delegate?.playTrack(urlString: audioURLString)
        } else {
            print("Error: Invalid audio URL.")
        }
        if audioIsPlaying {
            pauseAudio()
            playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        } else {
            playAudio()
            playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
        }
    }
    
    func playAudio() {
        audioIsPlaying = true
    }
    
    func pauseAudio() {
        audioIsPlaying = false
    }
    
}


