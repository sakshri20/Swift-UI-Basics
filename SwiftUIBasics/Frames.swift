//
//  Frames.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct Frames: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(Color.green)
////            .frame(width: 300, height: 100, alignment: .center)
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//            .background(.red)
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(height: 100, alignment: .top)
            .background(.red)
            .frame(width: 200, alignment: .leading)
            .background(.purple)
            .frame(maxHeight: 400)
            .background(.yellow)
            .frame(maxWidth: .infinity)
            .background(.orange)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(.pink)
    }
}

#Preview {
    Frames()
}
