//
//  Avatar.swift
//  Animation
//
//  Created by Аня on 25.07.2022.
//

import SwiftUI

struct Avatar: View {
    @State private var isScaled = false
    @State private var isRotated = false
    @State private var isAnimation = false
    
    var body: some View {
        Image(systemName: "person")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding()
            .scaleEffect(isScaled ? 0.8 :  0.18)
            .animation(.easeInOut(duration: 0.5), value: isAnimation)
            .onTapGesture {
                isScaled.toggle()
                isRotated.toggle()
                isAnimation.toggle()
            }
    }
}

struct Avatar_Previews: PreviewProvider {
    static var previews: some View {
        Avatar()
    }
}
