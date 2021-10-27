//
//  PlayButtonView.swift
//  BuildNetflix
//
//  Created by Mac on 27/10/2021.
//

import SwiftUI

struct PlayButtonView: View {
    // property
    var test : String
    var ImageName : String
    
    // Cloure
    var action : () -> Void
    
    // Body
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            HStack{
                Spacer()
                Image(systemName: ImageName)
                    .font(.headline)
                Text(test)
                    .bold()
                    .font(.system(size:16))
                Spacer()
            }
            .padding(.vertical,6)
            .foregroundColor(Color.black)
            .background(Color.white)
            .cornerRadius(3.0)
        })
        
    }
}

struct PlayButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButtonView(test: "Play", ImageName: "play.fill", action: { })
        }
    }
}
