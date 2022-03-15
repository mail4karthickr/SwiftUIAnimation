//
//  AnimationCurves.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 14/03/22.
//

import SwiftUI

struct AnimationCurves: View {
    var body: some View {
        List {
            Section {
                Text(
                    """
                    An animation curve is a way to express the speed throughout the duration of the animation
                    """
                )
            }
            Section {
                Text("Below are the feault animation curves available in iOS")
                Text(
                    """
                     Animation.easeInOut
                     Animation.easeIn
                     Animation.easeOut
                     Animation.linear
                   """
                )
            }
            Section {
                NavigationLink("Animation curves example") {
                    AnimationCurvesExample()
                }
            }
            Section {
                TitleText("Custom timing curve - Bezier curve")
                Text("""
                    It is a way of defining a curve with the use of parameters or numbers.
                    The method was developed by Pierre Bézier, who used it for designing curves for
                     Renault cars in the 1960s.
                    """
                )
            }
            Section {
                NavigationLink("Custom timing curve example") {
                    CustomTimingCurve()
                }
            }
            Section {
                Link("Cubic bezier", destination: URL(string: "https://cubic-bezier.com")!)
            }
        }
        .navigationTitle(Text("Animation Curves"))
    }
}

struct AnimationCurves_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurves()
    }
}
