//
//  SamllVerticalButtonView.swift
//  BuildNetflix
//
//  Created by Mac on 27/10/2021.
//

import SwiftUI

struct SamllVerticalButtonView: View {
    //properties
    var test       : String
    var isOnImage  : String
    var isOffImage : String
    var isOn       : Bool
    // computed property
    var imageName : String{
        return (isOn) ? isOnImage : isOffImage
    }
    var action : () -> Void
    //Body
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack{
                Image(systemName:imageName)
                    .foregroundColor(.white)
                Text(test)
                    .foregroundColor(.white)
                    .font(.system(size:15))
                    .bold()
                
            }
        })
    }
}

struct SamllVerticalButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SamllVerticalButtonView(test:"my List", isOnImage: "checkmark", isOffImage: "plus", isOn: false){
                print("Tapped ")
            }
        }
    }
}
