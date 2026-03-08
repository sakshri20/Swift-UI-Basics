//
//  AnimationCurves.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct AnimationCurves: View {
    
    @State var isAnimating = false
    @State var timing: Double = 10.0
    
    var body: some View {
        
        VStack {
            
            Button("Animate", action: {
                isAnimating.toggle()
            })
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 100, height: 50)
//                .animation(Animation.linear(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 100, height: 50)
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 100, height: 50)
//                .animation(Animation.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 100, height: 50)
//                .animation(Animation.easeOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 100, height: 100)
                .animation(.spring(response: 0.5,
                                   dampingFraction: 0.7,
                                       blendDuration: 1.0), value: isAnimating)
        }
    }
}

#Preview {
    AnimationCurves()
}
