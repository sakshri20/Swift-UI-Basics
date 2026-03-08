//
//  Shapes.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/20/26.
//

import SwiftUI

struct Shapes: View {
    var body: some View {
//        Circle()
//            .trim(from: 0.2, to: 1.0)
//            .fill(Color.pink)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [5]))
//            .frame(width: 200,height: 200)
        
//        Ellipse()
//            .frame(width: 200, height: 100)
        
//        Capsule(style: .circular)
//            .frame(width: 200, height: 100)
        
//        Rectangle()
//            .frame(width: 200, height: 100)
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 200, height: 100)
    }
}

#Preview {
    Shapes()
}
