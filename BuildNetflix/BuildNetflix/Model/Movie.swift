//
//  Movie.swift
//  BuildNetflix
//
//  Created by Angelo Essam on 27/10/2021.
//

import Foundation

struct Movie : Identifiable{
    
    var id   : String
    var name : String
    var thumbnailUrl : URL
    var category : [String]
    
    // Movie Detials
    var year : Int
    var rating : String
    var numberOfSeasons : Int?
    //
    var episode : [Episode]?
    var numberOfSeasonsDisplay : String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 seasons"
            }else{
                return "\(num) seasons"
            }
        }
        return ""
    }
    var promtionHeadLine : String?
    
    var defaultEpisodeInfo : CurrentEpisodeInfo
    var currentEpisodeInfo : CurrentEpisodeInfo?
    
    
    var episodeInfoDisplay : String {
        if let current = currentEpisodeInfo{
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        }else{
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescribtionDisplay : String {
        if let current = currentEpisodeInfo{
            return "\(current.description)"
        }else{
            return "\(defaultEpisodeInfo.description)"
        }
    }
    
    //
    var creators : String
    var cast     : String
    
    //
    var moreLikeThisMovie : [Movie]
    var movieTrailer      : [Trailer]
    
}
