//
//  VideoListItem.swift
//  AnimalKR
//
//  Created by yp on 2024/05/17.
//

import SwiftUI

struct VideoListItem: View {
    //property
    let video: Video
    
    var body: some View {
        HStack(spacing:10){
            ZStack{
                Image(video.id)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 90)
                    .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 5)
            }//:ZStack
            
            VStack(spacing: 10, content: {
                Text(video.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    .hLeading()
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            })//:VStack
            
        }//:HStack
    }
}

#Preview {
    VideoListItem(video: Video.sampleVideoData)
}
