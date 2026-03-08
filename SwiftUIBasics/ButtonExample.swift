//
//  ButtonExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct ButtonExample: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(title)")
                .font(.title)
            
            Button("Press me!", action: {
                self.title = "I was pressed!"
            })
            
            Button( action: {
                self.title = "2nd button pressed!"
            }, label: {
                // Text("Press me too!")
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(content: {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)))
                    })
            })
            
            Button(action: {
                self.title = "3rd button pressed!"
            }, label: {
                Text("save".capitalized)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            Button(action: {
                self.title = "4th button pressed!"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .fill(.white)
                            .stroke(Color.gray, lineWidth: 2)
                        
                    )
            })
        }
    }
}

#Preview {
    ButtonExample()
}
