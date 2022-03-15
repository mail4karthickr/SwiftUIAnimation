//
//  Animation.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 14/03/22.
//

import SwiftUI

struct AnimationGettingStarted: View {
    var body: some View {
        List {
            Section {
                TitleText("Animation")
                Text(
                    """
                     The word “animate” comes from Latin and means “something that has life within it.
                     Every animation needs some kind of change in order to see something happen.
                     In SwiftUI, you will define what to change and then animate that change.
                    """
                )
            }
            Section {
                TitleText("Parts of an animation").font(.system(.title))
                Text(
                    """
                    Animations have three parts:
                    
                    1. Start
                    2. Change
                    3. Stop
                    
                    In SwiftUI, you only have to define the start and end states.
                    The change between these two states will be handled for you automatically.
                    There are different ways you can control the change, such as speed and duration.
                    """
                )
            }
            Section {
                TitleText("Animation triggers").font(.system(.title))
                Text(
                    """
                     Animations need some kind of trigger to start the animation.
                     When I say “trigger”, I mean something that happens that prompts or starts the
                     animation.
                     A trigger can be a tap of a button, a value changing, or an event such as when the
                     screen appears.
                    """
                )
            }
            Section {
                TitleText("Example").font(.system(.title))
                NavigationLink("No Animation") {
                    NoAnimation()
                }
                NavigationLink("With Animation") {
                    WithAnimation()
                }
            }
        }
    }
}

struct Animation_Previews: PreviewProvider {
    static var previews: some View {
        AnimationGettingStarted()
    }
}
