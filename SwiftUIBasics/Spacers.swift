//
//  Spacers.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct Spacers: View {
    var body: some View {
//        HStack {
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 100, height: 100)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 200, height: 100)
//            
//        }
//        .padding()
//        .background(
//            Color.yellow
//        )
        
//        HStack {
//            
//            Spacer(minLength: nil) // nil defaults to 8
//                .frame(height: 10)
//                .background(.black)
//            
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//            
//            Rectangle()
//                .fill(.red)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//            
//            Rectangle()
//                .fill(.green)
//                .frame(width: 50, height: 50)
//            
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//            
//        }
//        .padding(.horizontal, 200)
//        .background(Color.yellow)
        
        VStack {
            HStack {
                Image(systemName: "xmark")
                
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal)
            
            Spacer()
                .frame(width: 10)
                .background(.orange)
            
            Rectangle()
                .frame(height: 50)
        }
    }
}

#Preview {
    Spacers()
}
