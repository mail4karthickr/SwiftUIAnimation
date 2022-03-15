//
//  AnimatableProperties.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 14/03/22.
//

import SwiftUI

enum AnimationModifiers: String, CaseIterable {
    case color
    case hueRotation
    case offset
    case alignment
    case geometryReader
    case opacity
    case rotationEffect
    case rotationEffectAnchors
    case frame
    case scaleEffect
    case scaleFromAnchorPoint
    case cornerRadius
    case textSize
    case textSizeScaleEffect
    case textSizeScaleEffectSolution
    case trim
}

extension AnimationModifiers: Identifiable {
    var id: String { self.rawValue }
}

struct AnimatableProperties: View {
    var body: some View {
        List {
            Section {
                Text("Most, if not all, of the properties that can be animated have a numerical value.")
            }
            Section {
                ForEach(AnimationModifiers.allCases) { view in
                    NavigationLink(view.rawValue.capitalizingFirstLetter()) {
                        switch view {
                        case .color:
                            Animate_Color()
                        case .hueRotation:
                            Animate_HueRotation()
                        case .offset:
                            Animate_Offset()
                        case .alignment:
                            Animate_Alignment()
                        case .geometryReader:
                            Animate_GeometryReader()
                        case .opacity:
                            Animate_Opacity()
                        case .rotationEffect:
                            Animate_RotationEffect()
                        case .rotationEffectAnchors:
                            Animate_RotationEffect_Anchors()
                        case .frame:
                            Animate_Size_Frame()
                        case .scaleEffect:
                            Animate_Size_ScaleEffect()
                        case .scaleFromAnchorPoint:
                            Animate_ScaleEffect_Anchors()
                        case .cornerRadius:
                            Animate_RoundedCorners()
                        case .textSize:
                            Animate_TextSize()
                        case .textSizeScaleEffect:
                            Animate_TextSize_ScaleEffect()
                        case .textSizeScaleEffectSolution:
                            Animate_TextSize_ScaleEffect_Solution()
                        case .trim:
                            Animate_Trim()
                    }
                }
            }
            }
        }
        .navigationTitle(Text("Animatable Properties"))
    }
}

struct AnimatableProperties_Previews: PreviewProvider {
    static var previews: some View {
        AnimatableProperties()
    }
}
