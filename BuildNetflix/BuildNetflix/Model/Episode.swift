//
//  Episode.swift
//  BuildNetflix
//
//  Created by Mac on 28/10/2021.
//

import Foundation


struct Episode : Identifiable{

    var id = UUID().uuidString
    var nam    : String
    var season : String
    var thumbnailImagesURLString : String
    var describption : String
    var length : Int
    
    var thumbnailUrl : URL {
        return URL(string:thumbnailImagesURLString)!
    }
    
}
