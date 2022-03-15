//
//  PresetTransitions.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 15/03/22.
//

import SwiftUI

enum PresetTransitionTypes: String, CaseIterable, Identifiable {
    // enter from leading and exit from trailing.
    case slide = "Slide"
    case move = "Move"
    case offset = "Offset"
    case opacity = "Opacity"
    case scale = "Scale"
    
    var id: String { rawValue }
}

struct PresetTransitions: View {
    var body: some View {
        List(PresetTransitionTypes.allCases) { value in
            NavigationLink(value.rawValue) {
                switch value {
                case .slide:
                    Slide()
                case .move:
                    Move()
                case .offset:
                    Offset()
                case .opacity:
                    Opacity()
                case .scale:
                    Scale()
                }
            }
        }
    }
}
