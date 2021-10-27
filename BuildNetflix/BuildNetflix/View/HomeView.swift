//
//  HomeView.swift
//  BuildNetflix
//
//  Created by Angelo Essam on 27/10/2021.
//

import SwiftUI

struct HomeView: View {
    var viewModel = HomeViewModel()
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ForEach(viewModel.allCategories,id:\.self){ catgory in
                VStack {
                    HStack {
                        Text(catgory)
                        Spacer()
                    }
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            ForEach(viewModel.getMovie(catgory)){ movie in
                                StandardHomeMovieView(movie: movie)
                                    .frame(width:100,height:200)
                                    .padding(.horizontal,20)
                            }
                        }

                    }
                }
                    
                    
            }
        }.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
