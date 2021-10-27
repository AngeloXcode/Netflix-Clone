//
//  StandardHomeMovieView.swift
//  BuildNetflix
//
//  Created by Angelo Essam on 27/10/2021.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovieView: View {
    var movie:Movie
    var body: some View {
        KFImage(movie.thumbnailUrl)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovieView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovieView(movie: mockData)
    }
}
