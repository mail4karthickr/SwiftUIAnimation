//
//  Combining.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 15/03/22.
//

import SwiftUI

struct Combining: View {
    @State private var change = false
    
    var body: some View {
        ZStack {
            Color("DarkShade2")
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TitleText("Transitions").foregroundColor(Color("LightShade2"))
                SubtitleText("Combining Introduction").foregroundColor(Color("LightAccent2"))
                BannerText("You can combine transition effects to work together. For example, here is the combination of slide and opacity.",
                           backColor: Color("DarkAccent2"), textColor: Color("LightShade2"))
                
                Button("Change") {
                    change.toggle()
                }
                Spacer()
                
                if change {
                    Image("window")
                        .transition(AnyTransition.slide.combined(with: .opacity))
                }
                
                Spacer()
            }
            .animation(.default, value: change)
            .font(.title)
            .accentColor(Color("Accent2"))
        }
    }
}

struct Combining_Previews: PreviewProvider {
    static var previews: some View {
        Combining()
    }
}
