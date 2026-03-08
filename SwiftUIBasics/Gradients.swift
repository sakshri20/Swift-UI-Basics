//
//  Gradients.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct Gradients: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20.0)
            .fill(
                // Color(.red)
//                LinearGradient(
//                    colors: [Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))],
//                    startPoint: .topTrailing, endPoint: .bottomLeading
//                )
                
//                RadialGradient(
//                    colors:  [Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))], center: .topLeading,
//                    startRadius: 10,
//                    endRadius: 200)
                
                AngularGradient(
                    colors:  [Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)), Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))], center: .topLeading,
                    angle: .degrees(180 + 44))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    Gradients()
}
