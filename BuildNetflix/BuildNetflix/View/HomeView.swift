//
//  HomeView.swift
//  BuildNetflix
//
//  Created by Angelo Essam on 27/10/2021.
//

import SwiftUI

struct HomeView: View {
    //Properties
    var viewModel = HomeViewModel()
    
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: true){
                LazyVStack{
                    
                    
                    TopMenuButtonsView()
                    
                    
                    TopMovieView(movie: mockData)
                        .frame(width:screen.width)
                        .padding(.top,-100)
                        .zIndex(-1)
                    
                    
                    
                    ForEach(viewModel.allCategories,id:\.self){ catgory in
                        VStack {
                            HStack {
                                Text(catgory)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal,showsIndicators: false){
                                LazyHStack{
                                    ForEach(viewModel.getMovieWhereCategory(catgory)){ movie in
                                        StandardHomeMovieView(movie: movie)
                                            .frame(width:100,height:200)
                                            .padding(.horizontal,20)
                                    }
                                }
                                
                            }
                        }
                        
                        
                    } // end of for loop
                }
            } //end of ScrollView
        }.foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopMenuButtonsView : View {
    var body: some View {
        HStack {
            Button(action: {
                // action here
                
            }, label: {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50.0)
            }).buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            Button(action: {
                // action here
                
            }, label: {
                Text("TV Shows")
            }).buttonStyle(PlainButtonStyle())
            
            
            Spacer()
            
            
            Button(action: {
                // action here
                
            }, label: {
                Text("Movies")
            }).buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                // action here
                
            }, label: {
                Text("Series")
            }).buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                // action here
                
            }, label: {
                Text("My List")
            }).buttonStyle(PlainButtonStyle())
            
            
        }
        .background(Color.black.opacity(0.1))
        .padding(.trailing,30)
        .padding(.leading,10)
    }
}
