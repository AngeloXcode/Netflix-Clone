//
//  GlobalHelpers.swift
//  BuildNetflix
//
//  Created by Angelo Essam on 27/10/2021.
//

import Foundation


let mockData = Movie(id: UUID().uuidString, name: "No Time To Die", thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category: ["Dystopian","Suspenseful","Exciting"])

let mockData1 = Movie(id: UUID().uuidString, name: "Arrebato (Rapture)", thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"])

let mockData2 = Movie(id: UUID().uuidString, name: "Dune", thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"])

let mockData3 = Movie(id: UUID().uuidString, name: "The French Dispatch", thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"])

let mockData4 = Movie(id: UUID().uuidString, name: "The Last Duel", thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"])

let mockData5 = Movie(id: UUID().uuidString, name: "Runt", thumbnailUrl: URL(string: "https://i.picsum.photos/id/335/200/300.jpg?hmac=G81PbTg8uAk00mCq0eZdiTJwpa_-_FvFZJVhEGcouXQ")!, category:  ["Dystopian","Suspenseful","Exciting"])


let mocDataArray : [Movie] = [mockData,mockData1,mockData2,mockData3,mockData4,mockData5]
