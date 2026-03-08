//
//  Stacks.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct Stacks: View {
    var body: some View {
//        VStack(alignment: .center, spacing: 0,content: {
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 200)
//            
//            Rectangle()
//                .fill(.yellow)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//            
//        })
        
//        ZStack(alignment: .top) {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 300, height: 400)
//            
//            VStack(alignment: .leading, spacing: 10) {
//                Rectangle()
//                    .fill(.yellow)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(.green)
//                    .frame(width: 100, height: 100)
//                
//                HStack(alignment: .bottom) {
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 75, height: 75)
//                    
//                    Rectangle()
//                        .fill(.pink)
//                        .frame(width: 50, height: 50)
//                    
//                    Rectangle()
//                        .fill(.red)
//                        .frame(width: 25, height: 25)
//                }
//                .background(Color.white)
//            }
//            .background(Color.brown)
//        }
//        .background(Color.gray)
        
//        VStack(alignment: .center, spacing: 20) {
//            Text("5")
//                .font(.title)
//                .underline()
//            
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
        
        // for 1 or 2 layer of elements you can use backgraounds. For more complex structures use ZStack
        
        VStack(spacing: 40) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    Stacks()
}
