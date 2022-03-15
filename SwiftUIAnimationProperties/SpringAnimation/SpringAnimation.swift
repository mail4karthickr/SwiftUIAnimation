//
//  SpringAnimation.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 14/03/22.
//

import SwiftUI

struct SpringAnimation: View {
    var body: some View {
        List {
            Section {
                Text(
                    """
                    The spring animation adds a bounce to your animations.
                    There are three types of spring animation.
                    1. Spring
                    2. Interactive spring.
                    3. Interpolating spring.
                    """
                )
            }
            Section {
                TitleText("Spring")
                Text("The spring animation adds a bounce to your animations.")
                Text(
                    """
                    Parameters
                    response - Using the response parameter you can adjust the spring's response to being activated. Will it respond quickly or slowly?
                    
                    dampingFraction - Spring animations have a dampen property that dampens or make your spring less strong or intense
                    
                    blendDuration - Blend duration is the number of seconds in which to calculate the differences in changes (within the response's duration)
                    """
                )
                NavigationLink("Example") {
                    SpringExample()
                }
            }
            Section {
                TitleText("Interactive spring")
                Text("The interactive spring animation is actually just like the spring animation but it has different default parameter")
                Text(
                    """
                    Comparision
                     If you look at the definition of both functions you can see how the default value differ.
                    
                     func spring(response: Double = 0.55, dampingFraction: Double = 0.825, blendDuration: Double = 0) -> Animation
                    
                     func interactiveSpring(response: Double = 0.15, dampingFraction: Double = 0.86,  blendDuration: Double = 0.25) -> Animation
                    """
                )
                NavigationLink("Interactive vs Spring") {
                    InteractiveSpring()
                }
            }
            Section {
                TitleText("Interpolating spring")
                Text(
                """
                The word “interpolate” means to insert something into something else.
                
                The interpolating spring animation is inserting calculated frames between the start and end states of the property that is changing.
                
                With interpolating spring animations, you have more control over the spring with 4 different parameters.
                
                You can also increase or overlap the spring effect by continually triggering the animation. This could also be why it’s called
                “interpolating" because it’s inserting more animations
                """
                )
                NavigationLink("Example") {
                    InterpolatingSpring()
                }
            }
        }
        .navigationTitle(Text("Spring Animations"))
    }
}

struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
