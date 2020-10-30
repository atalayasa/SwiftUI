//
//  VideoListItem.swift
//  AfricaApp
//
//  Created by Atalay Aşa on 27.10.2020.
//

import SwiftUI

struct VideoListItemView: View {
    
    let video: Video
    
    var body: some View {
        HStack {
            Image("\(video.thumbnail)")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(9)
                .overlay(
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 32)
                        .shadow(radius: 4)
                )
            VStack(alignment: .leading, spacing: 10) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } // VStack
        } // HStack
    }
}

struct VideoListItem_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    
    static var previews: some View {
        VideoListItemView(video: videos.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
