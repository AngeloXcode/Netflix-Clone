//
//  TopMovieView.swift
//  BuildNetflix
//
//  Created by Mac on 27/10/2021.
//

import SwiftUI
import Kingfisher
struct TopMovieView: View {
    // properties
    @State var topMovieVM : TopMovieViewModel!
    var movie : Movie
    
    // Body
    var body: some View {
        ZStack{
            KFImage(movie.thumbnailUrl)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack{
                Spacer()
                HStack{
                    ForEach(movie.category,id:\.self){ cat in
                        HStack {
                            if (topMovieVM != nil) {
                                if !topMovieVM.checkIfLastItemCategory(cat) {
                                    Image(systemName: "circle.fill")
                                        .foregroundColor(.blue)
                                        .font(.system(size: 3))
                                }
                            }
                            Text(cat)
                                .font(.footnote)
                            
                        }
                    }
                }
                
                HStack{
                    Spacer()
                    
                    SamllVerticalButtonView(test: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                        // action come from
                    }
                    
                    Spacer()
                    
                    PlayButtonView(test: "play", ImageName:"play.fill"){
                        
                    }.frame(width: 120.0)
                    
                    Spacer()
                    
                    SamllVerticalButtonView(test: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true){
                        // action come from
                    }
                    
                    Spacer()
                }
            }
            .background(LinearGradient.blackOpacityGradient)
            .padding(.top,250)
        }
        .onAppear{
            self.topMovieVM = TopMovieViewModel(movie: movie)
            
        }
        .foregroundColor(.white)
        
        
    }
}

struct TopMovieView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            TopMovieView(movie: mockData)
        }
    }
}
