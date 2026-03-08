//
//  BackgroundsAndOverlays.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct BackgroundsAndOverlays: View {
    var body: some View {
        
        // Backgrounds
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                Circle()
//                    .trim(from: 0.0, to: 1.0)
//                    .fill(LinearGradient(colors: [.red, .blue], startPoint: .leading, endPoint: .trailing))
//                    .stroke(.yellow, style: StrokeStyle(lineWidth: 5.0, lineCap: .butt, dash: [5]))
//                    .frame(width: 200, height: 200)
//                    
//            )
//            .background(
//                Circle()
//                    .trim(from: 0.0, to: 1.0)
//                    .fill(LinearGradient(colors: [.blue, .red], startPoint: .leading, endPoint: .trailing))
//                    .stroke(.yellow, style: StrokeStyle(lineWidth: 5.0, lineCap: .butt, dash: [5]))
//                    .frame(width: 220, height: 220)
//                    
//            )
        
        // Overlays:
        
//        Circle()
//            .fill(.pink)
//            .frame(width: 100, height: 100)
//            .overlay {
//                Text("1")
//                    .font(.title)
//                    .foregroundColor(.white)
//            }
//            .background(
//                Circle()
//                    .fill(.purple)
//                    .frame(width: 110, height: 110)
//            )
        
//        RoundedRectangle(cornerRadius: 20)
//            .frame(width: 100, height: 100)
//            .overlay(alignment: .top, content: {
//                Rectangle()
//                    .fill(.blue)
//                    .frame(width: 50, height: 50)
//                }
//            )
//            .background(alignment: .bottomTrailing, content: {
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 150, height: 150)
//            })
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.blue)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))],
                                       startPoint:.topLeading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color:Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.7998758278)), radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .shadow(color:Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 0.7998758278)), radius: 10, x: 5, y: 5)
                            .overlay(content: {
                                Text("5")
                                    .font(.caption)
                                    .foregroundColor(.white)
                            })
                    })
            )
            
        
        
    }
}

#Preview {
    BackgroundsAndOverlays()
}
