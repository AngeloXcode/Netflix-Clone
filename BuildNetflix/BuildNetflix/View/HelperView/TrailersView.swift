//
//  TrailersView.swift
//  BuildNetflix
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI

struct TrailersView: View {
    //properties
    var trailers : [Trailer]
  
    //Body
    var body: some View {
        VStack{
            ForEach(trailers){ trailer in
                VStack(alignment:.leading){
                    VideoPreviewImageView(imageURL: trailer.thumbnailUrl , videoURL: trailer.videoUrl)
                        .frame(maxWidth:screen.width)
                    Text(trailer.name)
                        .font(.headline)
                }.foregroundColor(.white )
                .padding(.vertical,10)
            }
        }
    }
}

struct TrailersView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            TrailersView(trailers: trailerExmpleArray)
        }
    }
}
