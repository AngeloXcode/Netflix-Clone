//
//  MoreLikeThisView.swift
//  BuildNetflix
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI

struct MoreLikeThisView : View {
    // properties
    var movies : [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    //Body
    var body: some View {
        ScrollView{
            LazyVGrid(columns:columns){
                ForEach(0..<movies.count){ index in
                  StandardHomeMovieView(movie:movies[index])
                }
            }
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movies: mocDataArray )
    }
}
