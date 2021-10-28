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
}
