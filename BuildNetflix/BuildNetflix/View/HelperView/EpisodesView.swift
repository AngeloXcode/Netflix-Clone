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
        VStack{
            HStack{
                Button(action:{
                    //action
                    showSeasonsPicker.toggle()
                },label: {
                    Group{
                        Text("Session 1")
                        Image(systemName: "chevron.down")
                    }.font(.system(size: 16.0))
                    Spacer()
                })
            } // end of HStack
            // end of Episodes List
            ForEach(getEpisodes(forSeason: selectedSession)){ episode in
                Text("Text")
            }
            Spacer()

        }// end of VStack
        .foregroundColor(.white)
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
