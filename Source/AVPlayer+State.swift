//
//  AVPlayer+State.swift
//  ZAudioKit
//
//  Created by Omar Allaham on 25.06.18.
//  Copyright © 2018 Pitive. All rights reserved.
//

import Foundation
import AVFoundation

fileprivate var delegateKey: UInt8 = 1

public extension AVPlayer {
    
    public var delegate: AVPlayerDelegate? {
        get { return objc_getAssociatedObject(self, &delegateKey) as? AVPlayerDelegate }
        set { objc_setAssociatedObject(self, &delegateKey, newValue, .OBJC_ASSOCIATION_ASSIGN) }
    }
    
    var session: AVAudioSession {
        return AVAudioSession.sharedInstance()
    }
    
    public var isPlaying: Bool {
        return rate == 1 && error == nil
    }
    
    public var duration: TimeInterval? {
        return currentItem?.asset.duration.seconds
    }
    
    public var currentTime: TimeInterval? {
        return currentItem?.currentTime().seconds
    }
    
    public var forwardPlaybackEndTime: TimeInterval? {
        return currentItem?.forwardPlaybackEndTime.seconds
    }
}

//MARK: - Seek
extension AVPlayer {
    
    public func seek(to seconds: TimeInterval, completionHandler: ((Bool) -> Swift.Void)? = nil) {
        
        let time = CMTimeMakeWithSeconds(seconds, 1)
        
        seek(to: time, completionHandler: completionHandler ?? { _ in })
    }
}


//MARK: - Play function
extension AVPlayer {
    
    public func play(_ url: URL) {
        
        let asset = AVAsset(url: url)
        
        play(asset)
    }
    
    public func play(_ asset: AVAsset) {
        
        let item = AVPlayerItem(asset: asset)
        
        play(item)
    }
    
    public func play(_ item: AVPlayerItem) {
        
        replaceCurrentItem(with: item)
        
        play()
    }
    
    public func togglePlay() {
        if isPlaying {
            pause()
        } else {
            play()
        }
    }
    
    public func stop() {
        pause()
        replaceCurrentItem(with: nil)
    }
    
    public func resumePlayback() {
        seek(to: kCMTimeZero)
    }
}














































