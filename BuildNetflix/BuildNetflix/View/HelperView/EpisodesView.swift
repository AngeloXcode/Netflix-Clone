//
//  EpisodesView.swift
//  BuildNetflix
//
//  Created by Mac on 30/10/2021.
//

import SwiftUI

struct EpisodesView: View {
    //Properties
    var episodes : [Episode]
    @Binding var showSeasonsPicker :Bool
    @Binding var selectedSession   :Int
    
    
    func getEpisodes(forSeason season:Int) -> [Episode]{
        return episodes.filter({ $0.season == "\(season)"  })
    }
    
    //Body
    var body: some View {
        VStack(spacing:14){
            HStack{
                Button(action:{
                    //action
                    showSeasonsPicker.toggle()
                },label: {
                    Group{
                        Text("Session \(selectedSession)")
                        Image(systemName: "chevron.down")
                    }.font(.system(size: 16.0))
                    Spacer()
                })
            } // end of HStack
            // end of Episodes List
            ForEach(getEpisodes(forSeason: selectedSession)){ episode in
                VStack(alignment:.leading){
                    HStack{
                        VideoPreviewImageView(imageURL: episode.thumbnailUrl , videoURL: episode.videoURL)
                            .frame(width: 120, height:70)
                            .clipped() 
                        VStack(alignment:.leading){
                            Text("\(episode.episodeNumber). \(episode.nam) ")
                            Text("\(episode.length)m")
                                .font(.system(size:12))
                        }
                        Spacer()
                       Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 16))
                    }
                  
                    
                    //Describtion
                    Text(episode.describption)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }.padding(.bottom,20)
            }
            Spacer()

        }// end of VStack
        .foregroundColor(.white)
        .padding(.horizontal,20)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
            EpisodesView(episodes: allExamplesEpisodes, showSeasonsPicker: .constant(true), selectedSession: .constant(1))
        }
    }
}
