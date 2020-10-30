//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 30.10.2020.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
        
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: "cheetah", fileFormat: "mp4")) {
//                Text("Cheetah")
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        } // VStack
        .accentColor(.accentColor)
        .navigationBarTitle("Cheeatah", displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerView()
    }
}
