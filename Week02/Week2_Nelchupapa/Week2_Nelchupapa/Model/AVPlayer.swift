//
//  AVPlayer.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//

import SwiftUI
import AVKit

class MoviePlayer: ObservableObject {
    var player = AVPlayer()
    
    func play() {
        player.play()
    }
    
    func pause() {
        player.pause()
    }
}
