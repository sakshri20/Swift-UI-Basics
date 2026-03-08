//
//  Images.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct Images: View {
    var body: some View {
//        Image("michael")
//            .resizable()
//            .scaledToFill()
//            .frame(width: 300, height: 300)
//            .clipShape(
//                RoundedRectangle(cornerRadius: 150)
//            )
        
        Image("google")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
            // .foregroundColor(.red)
        
            // need to get an image with transparent backgraound for the foreground color to work.
    }
}

#Preview {
    Images()
}
