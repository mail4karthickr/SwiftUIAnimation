//
//  Transition.swift
//  SwiftUIAnimationProperties
//
//  Created by Karthick Ramasamy on 15/03/22.
//

import SwiftUI

struct TextView: UIViewRepresentable {
    let text: String
    @Binding var dynamicHeight: CGFloat
    
    init(_ text: String, _ dynamicHeight: Binding<CGFloat>) {
        self.text = text
        self._dynamicHeight = dynamicHeight
    }

    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }
    
    func updateUIView(_ textView: UITextView, context: Context) {
        textView.text = text
        textView.font = UIFont.systemFont(ofSize: 18)
        dynamicHeight = textView.sizeThatFits(CGSize(width: textView.bounds.width, height: CGFloat.greatestFiniteMagnitude)).height
    }
}

struct Transition: View {
    @State private var height1: CGFloat = .zero
    @State private var height2: CGFloat = .zero
    @State private var height3: CGFloat = .zero
    @State private var height4: CGFloat = .zero
    
    var body: some View {
        List {
            Section {
                TextView(
                    """
                    The word “transition” means the process of change from one state to another.\n
                    Transitions are pre-made instructions you can apply to views that tells the view how to be inserted into the screen and how to be removed from the screen.\n
                    By themselves they will have no effect. It’s up to you to also supply an animation.
                    """, $height1
                )
                .frame(minHeight: height1)
            }
            Section {
                TitleText("AnyTransition")
                TextView(
                    """
                   The AnyTransition object holds information that the transition modifier uses.
                   It contains information on how a view will inserted and removed from the screen.
                   """, $height2
                )
                .frame(minHeight: height2)
                NavigationLink("Preset transitions") {
                    PresetTransitions()
                }
            }
            Section {
                TitleText("Combining Transitions")
                TextView(
                    "single transitions applied to views. You can also combine transitions and apply them to views", $height3
                )
                .frame(minHeight: height3)
                NavigationLink("Example") {
                    Combining()
                }
            }
            Section {
                TitleText("Assymetric Transitions")
                TextView(
                    """
                    The word “symmetric” means “exactly the same”. Transitions have exactly the same insertion and removal animations (except for slide).\n
                    What if you want the removal to be different from the insertion transition?\n
                    That’s when you want to use the asymmetric function to define an insertion that’s different from the removal. As you can guess, “asymmetric” means "not the same".\n
                    """, $height4
                )
                .frame(minHeight: height4)
                NavigationLink("Example") {
                    AsymmetricTransition()
                }
            }
        }
        .navigationTitle("Transition")
    }
}

