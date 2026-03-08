//
//  Colors.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/20/26.
//

import SwiftUI

struct Colors: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            //.fill(Color.blue)
//            .fill(Color.primary)
            .fill(
                // Color(#colorLiteral(red: 0.1943596005, green: 0.3809526861, blue: 0.9007921815, alpha: 1))
                // Color(#colorLiteral(red:, green:,blue))
//                Color(uiColor: UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            // .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10.0, x: -20, y: 20)
    }
}

#Preview {
    Colors()
}
