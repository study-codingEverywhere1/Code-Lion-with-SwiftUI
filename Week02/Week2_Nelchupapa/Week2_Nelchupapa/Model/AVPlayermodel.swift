//
//  AVPlayermodel.swift
//  Week2_Nelchupapa
//
//  Created by 백대홍 on 11/28/23.
//

import Foundation
import AVFoundation
import AVKit

class Video {
    let videoName: String
    let thumbnail: UIImage
    let duration: Int
    
    init(videoName: String) {
        self.videoName = videoName
        
        let url = Bundle.main.url(forResource: videoName, withExtension: "mp4")!
        let asset = AVURLAsset(url: url, options: nil)
        
        let midTime = CMTime(value: asset.duration.value / 2, timescale: asset.duration.timescale)
        // 영상의 총 길이의 딱 절반에 해당하는 시간을 구해주고 그걸 아래에서 썸네일로 사용
        
        
        // thumnail(썸네일) 구하기
        var thumnailImage = UIImage(named: "defaultThumnail")
        let imgGenerator = AVAssetImageGenerator(asset: asset)
        do {
            let cgImage = try imgGenerator.copyCGImage(at: midTime, actualTime: nil)
            thumnailImage = UIImage(cgImage: cgImage)
        } catch {
            print(error.localizedDescription)
        }
        self.thumbnail = thumnailImage!
        
        // duration(플레이타임) 구하기
        let duration: CMTime = asset.duration
        self.duration = Int(CMTimeGetSeconds(duration))
    }
}


/**
 - CMTime
 -
 */
