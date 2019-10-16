//
//  AVPlayerDelegate.swift
//  ZAudioKit
//
//  Created by Omar Allaham on 25.06.18.
//  Copyright © 2018 Pitive. All rights reserved.
//

import Foundation
import AVFoundation

public protocol AVPlayerDelegate {
    
    //MARK: - State
    func avplayer(_ player: AVPlayer, willStart item: AVPlayerItem)
    
    func avplayer(_ player: AVPlayer, didStart item: AVPlayerItem)
    
    func avplayer(_ player: AVPlayer, willPause item: AVPlayerItem)
    
    func avplayer(_ player: AVPlayer, didPause item: AVPlayerItem)
    
    func avplayer(_ player: AVPlayer, willStop item: AVPlayerItem)
    
    func avplayer(_ player: AVPlayer, didStop item: AVPlayerItem)
    
    func avplayer(_ player: AVPlayer, didStall item: AVPlayerItem)
    
    func avplayer(_ player: AVPlayer, willAdvanceTo nextItem: AVPlayerItem, previous currentItem: AVPlayerItem)
    
    //MARK: - Queue
    func avplayer(_ player: AVPlayer, queueChanged queue: [AVPlayerItem])
}

//MARK: - Implement Optional
extension AVPlayerDelegate {
    
    func avplayer(_ player: AVPlayer, willStart item: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, didStart item: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, willPause item: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, didPause item: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, willStop item: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, didStop item: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, didStall item: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, willAdvanceTo nextItem: AVPlayerItem, previous currentItem: AVPlayerItem) {}
    
    func avplayer(_ player: AVPlayer, queueChanged queue: [AVPlayerItem]) {}
}














































