//
//  ExtractSubview.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct ExtractSubview: View {
    
    let background = Color(#colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1))
    
    var body: some View {
        ZStack {
            // background
            background
                .ignoresSafeArea()
            
            // foreground
            contentLayer
            
        }
    }
    
    var contentLayer: some View {
        HStack(spacing: 20) {
            MyItem(count: 20, title: "Apples", background: .green)
            MyItem(count: 34, title: "Mangoes", background: .yellow)
            MyItem(count: 100, title: "Coconuts", background: .brown)
        }
    }
}

struct MyItem: View {
    
    let count: Int
    let title: String
    let background: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.headline)
            
            Text(title)
                .font(.subheadline)
                
        }
        .foregroundColor(.white)
        .padding()
        .background(background)
        .cornerRadius(10)
    }
}

#Preview {
    ExtractSubview()
}
