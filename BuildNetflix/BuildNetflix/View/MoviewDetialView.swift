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
    @State private var showSeasonsPicker = false
    @State private var selectedSession   = 1
    
    
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
                        if movie.promtionHeadLine != nil {
                            Text(movie.promtionHeadLine!)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButtonView(test: "Play", ImageName: "play.fill",backgroundColor:.red) {
                            //
                        }
                        
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing:60){
                            
                            SamllVerticalButtonView(test: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true){
                                
                            }
                            
                            SamllVerticalButtonView(test: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup.fill", isOn: true){
                                
                            }
                            
                            
                            SamllVerticalButtonView(test: "Share", isOnImage: "square.and.arrow.up", isOffImage:"square.and.arrow.up", isOn: true){
                                
                            }
                            Spacer()
                        }
                        .padding(.leading,20)
                        CustomTabView(showSeasonsPicker: $showSeasonsPicker, selectedSession: $selectedSession, tabs: [.episodes,.trailers,.more], movies:movie)
                    
                    } // end of VStack
                }.padding(.horizontal,10)
                Spacer()
            }.foregroundColor(.white)
            
            if showSeasonsPicker {
                Group {
                    Color.black.opacity(0.8).edgesIgnoringSafeArea(.all)
                    VStack(spacing:40){
                        Spacer()
                        ForEach(0..<(movie.numberOfSeasons ?? 0)){ Season in
                            Button(action:{
                                self.selectedSession = Season + 1
                                self.showSeasonsPicker.toggle()
                                
                            },label: {
                                Text("Season \(Season+1)")
                                    .foregroundColor((self.selectedSession == Season + 1) ? .white : .gray)
                                    .bold()
                                    .font((self.selectedSession == Season + 1) ? .title  : .title2)
                            })
                            
                        }
                        Spacer()
                        Button(action:{
                            self.showSeasonsPicker.toggle()
                        },label:{
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40.0))
                                .scaleEffect(x:1.1)
                        }).padding(.bottom,30)
                    }
                    
                }.edgesIgnoringSafeArea(.all)
            }
            
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
        HStack(spacing:20){
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white )
            
            Text(String(movie.year))
            
            RatingView(rating: String(movie.rating))
            
            Text(movie.numberOfSeasonsDisplay)
        }.foregroundColor(.gray)
            .padding(.vertical,6)
    }
}


struct RatingView : View{
    //Properties
    var rating:String
    //Body
    var body: some View{
        ZStack{
            Rectangle()
                .foregroundColor(.gray)
            
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }.frame(width: 50, height:20)
    }
}

struct CastInfo: View {
    //Properties
    var movie:Movie
    //Body
    var body: some View {
        VStack{
            HStack {
                Text("Cast : \(movie.cast)")
                    .font(.subheadline)
                Spacer()
            }
            HStack {
                Text("Actors : \(movie.creators)")
                    .font(.subheadline)
                Spacer()
            }
        }.font(.caption)
            .foregroundColor(.gray)
            .padding(.vertical,10)
    }
}

struct CurrentEpisodeInformation : View {
    //Properties
    var movie:Movie
    //Body
    var body: some View {
        Group{
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }.padding(.vertical,4)
            HStack {
                Text(movie.episodeDescribtionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
