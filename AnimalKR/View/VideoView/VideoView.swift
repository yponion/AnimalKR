//
//  VideoView.swift
//  AnimalKR
//
//  Created by yp on 2024/05/16.
//

import SwiftUI

struct VideoView: View {
    //property
    @ObservedObject var vm: AnimalViewModel
    
    var body: some View {
        NavigationView{
            List{
                ForEach(vm.videos){ video in
                    NavigationLink {
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItem(video: video)
                    }
                }//:ForEach
            }//:List
            .listStyle(.plain)
            .navigationBarTitle("비디오", displayMode: .inline)
        }//:NavigationView
    }
}

#Preview {
    VideoView(vm: AnimalViewModel())
}
