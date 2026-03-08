//
//  BindingExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct BindingExample: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing: 10) {
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var title: String
    @State var buttonBackgroundColor: Color = Color.blue
    
    var body: some View {
        
        Button(action: {
            backgroundColor = .orange
            title = "New Title!!"
            buttonBackgroundColor = .pink
        }, label: {
            Text("Update")
                .font(.largeTitle)
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonBackgroundColor)
                .cornerRadius(10)
                .shadow(radius: 10)
        })
    }
}

#Preview {
    BindingExample()
}
