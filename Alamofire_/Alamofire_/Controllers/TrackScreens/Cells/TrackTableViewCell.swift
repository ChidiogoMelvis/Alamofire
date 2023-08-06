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
    
    var track: Datum!
    
    var player: AVPlayer?
    
    var audioIsPlaying = false
    
    let nameLabel = Label(label: "", textColor: .black)
    
    let playButton = Button(image: UIImage(systemName: "play.fill"), label: "", btnColor: .black)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
        setupAudioPlayer()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        setupAudioPlayer()
        playButton.addTarget(self, action: #selector(btnTapped), for: .touchUpInside)
    }
    
    func setupAudioPlayer() {
        NotificationCenter.default.addObserver(self, selector: #selector(songDidFinishPlaying(_:)), name: .AVPlayerItemDidPlayToEndTime, object: player?.currentItem)
        
    }
    
    @objc func songDidFinishPlaying(_ notification: Notification) {
        guard let currentTime = player?.currentItem else {return}
        var title = ""
        var duration = 0
        var id = ""
        
        let playSong = Song()
        playSong.title = title
        playSong.duration = duration
        playSong.id = id
        RealmManager.shared.saveSong(playSong)
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
               if audioIsPlaying {
                   pauseAudio()
                   showPlayButton()
               } else {
                   playAudio(audioURLString)
                   showPauseButton()
               }
               audioIsPlaying.toggle()
           } else {
               print("error")
           }
       }

       func playAudio(_ urlString: String) {
           if let audioURL = URL(string: urlString) {
               player = AVPlayer(url: audioURL)
               player?.play()
           }
       }
    
    func pauseAudio() {
            player?.pause()
        }

    func showPlayButton() {
            playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)
        }

        func showPauseButton() {
            playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
        }
    
}


