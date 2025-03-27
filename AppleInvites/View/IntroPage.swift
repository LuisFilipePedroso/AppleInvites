//
//  IntroPage.swift
//  AppleInvites
//
//  Created by Luis Filipe Pedroso on 27/03/25.
//

import SwiftUI

struct IntroPage: View {
    @State private var activeCard: Card? = cards.first
    
    var body: some View {
        ZStack {
            AmbientBackground()
        }
    }
    
    @ViewBuilder
    private func AmbientBackground() -> some View {
        GeometryReader {
            let size = $0.size
            
            ZStack {
                ForEach(cards) { card in
                    Image(card.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                        .frame(width: size.width, height: size.height)
                        .opacity(activeCard?.id == card.id ? 1 : 0)
                }
                
                Rectangle()
                    .fill(.black.opacity(0.45))
                    .ignoresSafeArea()
            }
            .compositingGroup()
            .blur(radius: 90, opaque: true)
            .ignoresSafeArea()
        }
    }
    
}

#Preview {
    IntroPage()
}
