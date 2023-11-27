//
//  VideoPlayView.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//

import SwiftUI
import AVFoundation
import AVKit

struct VideoPlayView: View {
    @StateObject var viewModel = MoviePlayer()
    let video: Video
    
    var body: some View {
        AVVideoPlayer(viewModel: viewModel, video: video)
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                viewModel.play()
            }
            .onDisappear {
                viewModel.pause()
            }
    }
}



struct AVVideoPlayer: UIViewControllerRepresentable {
    @ObservedObject var viewModel: MoviePlayer
    let video: Video
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback)
        } catch {
            print("AVPlayer load failed.")
        }
        
        let videoPath = Bundle.main.path(forResource: video.videoName, ofType: "mp4")
        let videoPathURL = URL(fileURLWithPath: videoPath!)
        viewModel.player = AVPlayer(url: videoPathURL)
        
        let vc = AVPlayerViewController()
        vc.player = viewModel.player
        vc.canStartPictureInPictureAutomaticallyFromInline = true
        return vc
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) { }
}

