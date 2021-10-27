//
//  HomeViewModel.swift
//  BuildNetflix
//
//  Created by Angelo Essam on 27/10/2021.
//

import Foundation
import SwiftUI

class HomeViewModel : ObservableObject{
    
    @Published var movies : [String:[Movie]] = [:] // inislization was empty
    
    public var allCategories : [String]{
        return movies.keys.map{
            String($0)
        }
    }
    
    public func getMovieWhereCategory(_ category:String) -> [Movie] {
        return movies[category] ?? []
    }
    
    init(){
        setUpMovies()
    }
    
    func setUpMovies(){
        movies["Trending Now"] = mocDataArray
        movies["Stand-Up Comedy"] = mocDataArray.shuffled()
        movies["New Movies"] = mocDataArray.shuffled()
        movies["New Release"] = mocDataArray.shuffled()
        movies["Watch It Again"] = mocDataArray.shuffled()
        movies["SCI"] = mocDataArray.shuffled()
     
    }
}

