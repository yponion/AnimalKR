//
//  VideoPlayerView.swift
//  AnimalKR
//
//  Created by yp on 2024/05/17.
//

import SwiftUI

struct VideoPlayerView: View {
    
    let video: Video
    
    var body: some View {
        NavigationView{
            VStack{
                YoutubeView(videoID: video.videoid)
            }
            .navigationBarTitle("\(video.name)", displayMode: .inline)
        }//:NavigationView
    }
}

#Preview {
    VideoPlayerView(video: Video.sampleVideoData)
}
