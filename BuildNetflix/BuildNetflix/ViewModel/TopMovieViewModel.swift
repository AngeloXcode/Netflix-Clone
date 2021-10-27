//
//  TopMovieViewModel.swift
//  BuildNetflix
//
//  Created by Mac on 27/10/2021.
//

import Foundation

class TopMovieViewModel : ObservableObject{
    var movie : Movie?
    
    init(movie : Movie){
        self.movie = movie
    }
    
     func checkIfLastItemCategory(_ catName : String) -> Bool{
        if let movieField = movie?.category {
            let count = movieField.count
            print("\(catName) - \(movieField[0])")
            return (catName == movieField[0])  ? true : false
        }
        return false
    }
}
