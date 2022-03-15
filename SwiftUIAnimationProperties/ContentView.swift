//
//  ContentView.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 14/03/22.
//

import SwiftUI

enum Content: String, CaseIterable {
    case animation = "Animation"
    case animationCurves = "Animation Curves"
    case animatableProperties = "Animatable Properties"
    case springAnimation = "Spring Animation"
    case transition = "Transition"
}

extension Content: Identifiable {
    var id: String { rawValue }
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(Content.allCases) { view in
                NavigationLink(view.rawValue) {
                    switch view {
                    case .animation:
                        AnimationGettingStarted()
                    case .animationCurves:
                        AnimationCurves()
                    case .animatableProperties:
                        AnimatableProperties()
                    case .springAnimation:
                        SpringAnimation()
                    case .transition:
                        Transition()
                    }
                }
            }
            .navigationBarTitle(Text("SwiftUI Animations"))
        }
    }
}
