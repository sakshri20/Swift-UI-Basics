//
//  TransitionExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct TransitionExample: View {
    
    @State var showView = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("Button", action: {
                    showView.toggle()
                })
                
                Spacer()
            }
            
//            RoundedRectangle(cornerRadius: 25)
//                .frame(height: UIScreen.main.bounds.height * 0.5)
//                .opacity(showView ? 1.0 : 0.0)
//                .animation(.easeInOut, value: showView)
            
            if showView {
                RoundedRectangle(cornerRadius: 25)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    // .transition(.slide)
                    // .transition(.move(edge: .bottom))
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: AnyTransition.opacity.animation(.easeInOut)))
                    .animation(.spring, value: showView)
                    // .transition(AnyTransition.opacity.animation(.easeInOut(duration: 1.0))) // for this transition you dont need .animation
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionExample()
}
