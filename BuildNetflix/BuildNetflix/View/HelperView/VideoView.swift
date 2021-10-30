//
//  VideoView.swift
//  BuildNetflix
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI
import AVKit

struct VideoView: View {
    //Properties
    var url : URL
    private var palyer :AVPlayer{
        AVPlayer(url: url)
    }
    //Body
    var body: some View {
        VideoPlayer(player: palyer)
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(url: exmpleVideoURL)
    }
}
