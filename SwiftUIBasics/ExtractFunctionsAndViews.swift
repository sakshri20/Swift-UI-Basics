//
//  ExtractFunctionsAndViews.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct ExtractFunctionsAndViews: View {
    
    @State var background = Color.pink
    
    var body: some View {
        
        ZStack {
            // background
            
            background
                .ignoresSafeArea()
            
            // foreground
            foregroundContent
            
        }
    }
    
    var foregroundContent: some View {
        VStack {
            
            Text("Title")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Button(action: {
                updateBackground()
            }, label: {
                Text("Button")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(20)
            })
        }
    }
    
    func updateBackground() {
        background = .yellow
    }
}

#Preview {
    ExtractFunctionsAndViews()
}
