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
        movies["Trending Now"] = [mockData]
    }
}

