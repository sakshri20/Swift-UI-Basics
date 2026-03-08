//
//  ConditionalLogic.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct ConditionalLogic: View {
    
    @State var showCircl = false
    @State var showRectangle = false
    @State var isLoading = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Is Loading: \(isLoading.description)", action: {
                isLoading.toggle()
            })
            
            if isLoading {
                ProgressView()
            }
            
            Button("Show Circle: \(showCircl.description)", action: {
                showCircl.toggle()
            })
            
            Button("Show Rectangle: \(showRectangle.description)", action: {
                showRectangle.toggle()
            })
            
            if showCircl {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if showCircl && showRectangle {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 200, height: 200)
            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalLogic()
}
