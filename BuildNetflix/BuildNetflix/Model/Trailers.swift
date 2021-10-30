//
//  Trailers.swift
//  BuildNetflix
//
//  Created by Mac on 29/10/2021.
//

import Foundation

struct Trailer : Identifiable,Hashable{
    var id : String = UUID().uuidString
    var name : String
    var videoUrl : URL
    var thumbnailUrl : URL
}
