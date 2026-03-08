//
//  StatesExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct StatesExample: View {
    
    @State var background: Color = .red
    @State var title: String = "My title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            
            // background
            
            background
                .ignoresSafeArea()
            
            // foreground
            
            VStack(spacing: 20) {
                
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Count: \(count)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .underline()
                
                HStack(spacing: 30) {
                    
                    Button("Button 1".uppercased(), action: {
                        background = .green
                        title = "Button 1 pressed!"
                        count += 1
                    })
                    
                    Button("Button 2".uppercased(), action: {
                        background = .purple
                        title = "Button 2 pressed!"
                        count -= 1
                    })
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StatesExample()
}
