//
//  DisplayPodcastViewController.swift
//  Alamofire_
//
//  Created by Mac on 29/07/2023.
//

import UIKit
import AVFoundation
import AVKit

class DisplayVideoViewController: UIViewController {
    
    var selectedPodcast: Podcast?
    var player: AVPlayer?
    var playerViewController: AVPlayerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupVideoPlayer()
    }
    
    private func setupVideoPlayer() {
        guard let selectedPodcast = selectedPodcast,
              let videoURLString = selectedPodcast.collectionViewURL,
              let videoURL = URL(string: videoURLString) else {
            return
        }
        
        player = AVPlayer(url: videoURL)
        playerViewController = AVPlayerViewController()
        playerViewController?.player = player
        
        if let playerViewController = playerViewController {
            addChild(playerViewController)
            view.addSubview(playerViewController.view)
            playerViewController.view.frame = view.bounds
            playerViewController.didMove(toParent: self)
            
            player?.play()
        }
        
    }
}
