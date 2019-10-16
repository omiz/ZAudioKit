//
//  AVPlayerItem+Metadata.swift
//  ZAudioKit
//
//  Created by Omar Allaham on 25.06.18.
//  Copyright © 2018 Pitive. All rights reserved.
//

import Foundation
import AVFoundation

public extension AVPlayerItem {
    
    public var artist: String? {
        get { return timedMetadata?.first(where: { $0.commonKey == AVMetadataKey.commonKeyArtist })?.stringValue }
    }
    
    public var title: String? {
        get { return timedMetadata?.first(where: { $0.commonKey == AVMetadataKey.commonKeyTitle })?.stringValue }
    }
}














































