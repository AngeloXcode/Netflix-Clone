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
                     moreLikeThisMovie: [], movieTrailer: trailerExmpleArray)

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
                      moreLikeThisMovie: [mockData,mockData,mockData,mockData,mockData,mockData,mockData].shuffled(), movieTrailer: trailerExmpleArray)

let mockData2 = Movie(id: UUID().uuidString,
                      name: "Dune",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955, rating: "TV-MA",
                      numberOfSeasons: 3,
                      promtionHeadLine:"WATCH SEASONS 3 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData1,mockData,mockData1,mockData,mockData1].shuffled(), movieTrailer: trailerExmpleArray)

let mockData3 = Movie(id: UUID().uuidString, name: "The French Dispatch",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955,
                      rating: "TV-MA",
                      numberOfSeasons: 4,
                      promtionHeadLine:"WATCH SEASONS 5 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData1,mockData2,mockData,mockData1,mockData2].shuffled(), movieTrailer: trailerExmpleArray)

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
                      moreLikeThisMovie: [mockData,mockData1,mockData2,mockData3,mockData,mockData1,mockData2].shuffled(), movieTrailer: trailerExmpleArray)

let mockData5 = Movie(id: UUID().uuidString,
                      name: "Runt",
                      thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"],
                      year: 1955, rating: "TV-MA",
                      numberOfSeasons: 6,
                      promtionHeadLine:"WATCH SEASONS 6 NOW",
                      defaultEpisodeInfo: mockCurrentEpisode1,
                      creators:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      cast:"Robert De Niro,Jack Nicholson,Marlon Brando",
                      moreLikeThisMovie: [mockData,mockData1,mockData2,mockData3,mockData4,mockData1].shuffled(), movieTrailer: trailerExmpleArray)


var mocDataArray : [Movie] {
    return [mockData,mockData1,mockData2,mockData3,mockData4,mockData5].shuffled()
}


let exmpleVideoURL = URL(string:"https://www.dropbox.com/s/df2d2gf1dvnr5uj/Sample_1280x720_mp4.mp4")!

let exmpleImageURL1 = URL(string: "https://source.unsplash.com/random")!
let exmpleImageURL2 = URL(string: "https://source.unsplash.com/random")!
let exmpleImageURL3 = URL(string: "https://source.unsplash.com/random")!
let exmpleImageURL4 = URL(string: "https://source.unsplash.com/random")!
let exmpleImageURL5 = URL(string: "https://source.unsplash.com/random")!
let exmpleImageURL6 = URL(string: "https://source.unsplash.com/random")!

var randomImagesExmple : URL {
    return [exmpleImageURL1,exmpleImageURL2,exmpleImageURL3,exmpleImageURL4,exmpleImageURL5,exmpleImageURL6].randomElement()!
}

let trailer1 = Trailer(name: "Batman 3 Trailer", videoUrl: exmpleVideoURL, thumbnailUrl: randomImagesExmple)
let trailer2 = Trailer(name: "Hero 3 Trailer", videoUrl: exmpleVideoURL, thumbnailUrl: randomImagesExmple)
let trailer3 = Trailer(name: "Season 3 Trailer", videoUrl: exmpleVideoURL, thumbnailUrl: randomImagesExmple)
let trailer4 = Trailer(name: "Iron Man 3 Trailer", videoUrl: exmpleVideoURL, thumbnailUrl: randomImagesExmple)
let trailer5 = Trailer(name: "Xcoder 3 Trailer", videoUrl: exmpleVideoURL, thumbnailUrl: randomImagesExmple)
let trailer6 = Trailer(name: "Marvel 2 3 Trailer", videoUrl: exmpleVideoURL, thumbnailUrl: randomImagesExmple)

let trailerExmpleArray : [Trailer] = [trailer1,trailer2,trailer3,trailer4,trailer5,trailer6]


let episodes1 = Episode(nam:  "Beginnings and Endings", season: "1", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)


let episodes2 = Episode(nam:  "Beginnings and Endings", season: "1", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)



let episodes3 = Episode(nam:  "Beginnings and Endings", season: "1", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)



let episodes4 = Episode(nam:  "Beginnings and Endings", season: "1", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)


let episodes5 = Episode(nam:  "Beginnings and Endings", season: "2", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)


let episodes6 = Episode(nam:  "Beginnings and Endings", season: "2", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)



let episodes7 = Episode(nam:  "Beginnings and Endings", season: "2", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)



let episodes8 = Episode(nam:  "Beginnings and Endings", season: "2", thumbnailImagesURLString: "https://source.unsplash.com/random" , describption: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.", length: 56, videoURL: exmpleVideoURL, episodesNumeber: 3)

let allExamplesEpisodes = [episodes1,episodes2,episodes3,episodes4,episodes5,episodes6,episodes7,episodes8]


extension String{
    
    func getWidthofString(usingFont font:UIFont) -> CGFloat{
        
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size            = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
