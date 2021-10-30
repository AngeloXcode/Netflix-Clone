//
//  CustomTabView.swift
//  BuildNetflix
//
//  Created by Mac on 29/10/2021.
//

import SwiftUI

enum  CustomTab : String{
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more     = "MORE LIKE THIS"
    
}

struct CustomTabView: View {
    //properties
    @State private var currentTab : CustomTab = .episodes
    
    @Binding var  showSeasonsPicker : Bool
    @Binding  var selectedSession     : Int
    
    var tabs   : [CustomTab]
    var movies : Movie
    func widthForTab(_ tab : CustomTab) -> CGFloat{
        return tab.rawValue.getWidthofString(usingFont: .systemFont(ofSize: 16 , weight:.bold))
    }
    //Body
    var body: some View {
        VStack{
            // scrollerable
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing:20.0){
                    ForEach(tabs,id:\.self){ tab in
                        VStack{
                            //red Tab
                            Rectangle()
                                .frame(width:widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : .clear)
                            
                            //Button
                            Button(action: {
                                
                                self.currentTab = tab
                                
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16,weight:.bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            }).buttonStyle(PlainButtonStyle())
                                .frame(width:widthForTab(tab), height: 30)
                        }
                    }
                }
                
                //Selected View
                switch currentTab {
                case .episodes:
                    EpisodesView(episodes: movies.episode, showSeasonsPicker:$showSeasonsPicker , selectedSession:$selectedSession)
                case .trailers:
                    TrailersView(trailers: movies.movieTrailer)
//                    TrailersView(movies: movies.moreLikeThisMovie)
                case .more:
                    MoreLikeThisView(movies: movies.moreLikeThisMovie)
                }
                
            }.foregroundColor(.white)
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabView(showSeasonsPicker: .constant(true), selectedSession: .constant(1), tabs: [.episodes,.trailers,.more],movies:mockData1)
        }
    }
}
