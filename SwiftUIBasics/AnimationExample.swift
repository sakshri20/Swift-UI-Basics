//
//  AnimationExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct AnimationExample: View {
    
    @State var isAnimate = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
//            Button("Animate", action: {
//                withAnimation(.default) {
//                    isAnimate.toggle()
//                }
//            })
            
//            Button("Animate", action: {
//                withAnimation(
//                    Animation
//                        .default
//                        .delay(1.0)) {
//                    isAnimate.toggle()
//                }
//            })
            
//            Button("Animate", action: {
//                withAnimation(
//                    Animation
//                        .default
//                        .repeatCount(10, autoreverses: true)) {
//                    isAnimate.toggle()
//                }
//            })
            
            Button("Animate", action: {
                isAnimate.toggle()
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimate ? 50 : 25)
                .fill(isAnimate ? .blue : .red)
                .frame(
                    width: isAnimate ? 100 : 300,
                    height: isAnimate ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimate ? 360 : 0))
                .offset(y: isAnimate ? 300 : 0)
                .animation(
                    Animation
                        .default
                        .repeatCount(10, autoreverses: true))
            
            Spacer()
        }
    }
}

#Preview {
    AnimationExample()
}
