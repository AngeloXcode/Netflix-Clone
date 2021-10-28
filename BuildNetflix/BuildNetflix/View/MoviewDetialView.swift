//
//  MoviewDetialView.swift
//  BuildNetflix
//
//  Created by Mac on 28/10/2021.
//

import SwiftUI

struct MoviewDetialView: View {
    //properties
    var movie:Movie
    ///Body
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size:26.0))
                    }).buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal,22)
                ScrollView(.vertical,showsIndicators: true){
                    VStack{
                        StandardHomeMovieView(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadlineView(movie:movie)
                    }
                }
                Spacer()
            }.foregroundColor(.white)
          
        }
    }
}

struct MoviewDetialView_Previews: PreviewProvider {
    static var previews: some View {
        MoviewDetialView(movie: mockData3)
    }
}


struct MovieInfoSubheadlineView : View {
    //properties
    var movie:Movie
    ///Body
    var body: some View {
        HStack{
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white )
            
            Text(String(movie.year))
            
            Text("RATING")
            
            Text(movie.numberOfSeasonsDisplay)
        }.foregroundColor(.gray)
            .padding(.vertical,6)
    }
}
