//
//  VideoPreviewImageView.swift
//  BuildNetflix
//
//  Created by Mac on 30/10/2021.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImageView: View {
    // Properties
    var imageURL : URL
    var videoURL : URL
    @State private var showimgeViewPlayer = false
    // Body
    var body: some View {
        ZStack{
            KFImage(imageURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            Button(action:{
                // Action
                showimgeViewPlayer.toggle()
            },label:{
                Image(systemName:"play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            
                .sheet(isPresented:$showimgeViewPlayer,content: {
                    VideoView(url: videoURL)
                })
            
        }
        
    }
}

struct VideoPreviewImageView_Previews: PreviewProvider {
    static var previews: some View {
        VideoPreviewImageView(imageURL: exmpleImageURL1, videoURL: exmpleVideoURL)
    }
}
