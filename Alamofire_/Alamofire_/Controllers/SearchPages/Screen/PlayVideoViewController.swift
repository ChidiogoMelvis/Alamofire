//
//  PlayVideoViewController.swift
//  Alamofire_
//
//  Created by Mac on 31/07/2023.
//

import UIKit
import AVKit
import AVFoundation

class PlayVideoViewController: UIViewController {
    
    var podcast: Podcast?
    
    var playerViewController: AVPlayerViewController?
    
    let playButton = Button(image: UIImage(systemName: "play.fill"), label: "", btnColor: .red)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        if let previewURLString = podcast?.previewURL,
           let previewURL = URL(string: previewURLString) {
            playVideoWithURL(previewURL)
        } else {
            print("Error: Preview URL is nil or invalid.")
        }
    }
    
    func playVideoWithURL(_ url: URL?) {
        guard let videoURL = url else {
            return
        }
        
        let player = AVPlayer(url: videoURL)
        playerViewController = AVPlayerViewController()
        playerViewController?.player = player
        
        playerViewController?.showsPlaybackControls = true
        
        if let playerViewController = playerViewController {
            present(playerViewController, animated: true, completion: nil)
        }
    }
    
    func setupViews() {
        view.addSubview(playButton)
        
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playButton.heightAnchor.constraint(equalToConstant: 40),
            playButton.widthAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    
    
}
