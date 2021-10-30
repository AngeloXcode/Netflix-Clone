//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Angelo Essam on 27/10/2021.
//

import Foundation
import UIKit


let mockCurrentEpisode1 = CurrentEpisodeInfo(episodeName: "Lorem Ipsum is simply dummy text", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ", season: 2, episode: 1)


let mockData = Movie(id: UUID().uuidString,
                     name: "No Time To Die",
                     thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category: ["Dystopian","Suspenseful","Exciting"],
                     year: 1955,
                     rating: "TV-MA",
                     numberOfSeasons: 1,
                     promtionHeadLine:"WATCH SEASONS 6 NOW",
                     defaultEpisodeInfo: mockCurrentEpisode1,
                     creators :"Robert De Niro,Jack Nicholson,Marlon Brando",
                     cast     :"Robert De Niro,Jack Nicholson,Marlon Brando",
                     moreLikeThisMovie: [])

let mockData1 = Movie(id: UUID().uuidString,
                      name: "Arrebato (Rapture)",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955,
                      rating: "TV-MA",
                      numberOfSeasons: 2,
                      promtionHeadLine:"WATCH SEASONS 2 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData,mockData,mockData,mockData,mockData,mockData].shuffled())

let mockData2 = Movie(id: UUID().uuidString,
                      name: "Dune",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955, rating: "TV-MA",
                      numberOfSeasons: 3,
                      promtionHeadLine:"WATCH SEASONS 3 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData1,mockData,mockData1,mockData,mockData1].shuffled())

let mockData3 = Movie(id: UUID().uuidString, name: "The French Dispatch",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955,
                      rating: "TV-MA",
                      numberOfSeasons: 4,
                      promtionHeadLine:"WATCH SEASONS 5 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData1,mockData2,mockData,mockData1,mockData2].shuffled())

let mockData4 = Movie(id: UUID().uuidString,
                      name: "The Last Duel",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955,
                      rating: "TV-MA",
                      numberOfSeasons: 5,
                      promtionHeadLine:"WATCH SEASONS 5 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData1,mockData2,mockData3,mockData,mockData1,mockData2].shuffled())

let mockData5 = Movie(id: UUID().uuidString,
                      name: "Runt",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955, rating: "TV-MA",
                      numberOfSeasons: 6,
                      promtionHeadLine:"WATCH SEASONS 6 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData1,mockData2,mockData3,mockData4,mockData1].shuffled())


var mocDataArray : [Movie] {
    return [mockData,mockData1,mockData2,mockData3,mockData4,mockData5].shuffled()
}


let url : URL = URL(string: "")


extension String{
    
    func getWidthofString(usingFont font:UIFont) -> CGFloat{
        
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size            = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
