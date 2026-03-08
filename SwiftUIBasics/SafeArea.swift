//
//  SafeArea.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/22/26.
//

import SwiftUI

struct SafeArea: View {
    var body: some View {
        
//        ZStack {
//            
//            // background
//            Color.blue
//                .ignoresSafeArea(.all)
//            
//            // foreground
//            
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//            .ignoresSafeArea(edges: .bottom)
//        }
        
        ScrollView {
            VStack {
                Text("Title goes here:")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                }
            }
        }
        .background(
            Color.red
                .ignoresSafeArea(.all)
        )

        
    }
}

#Preview {
    SafeArea()
}
