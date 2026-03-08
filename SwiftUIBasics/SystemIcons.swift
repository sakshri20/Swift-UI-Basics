//
//  SystemIcons.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct SystemIcons: View {
    var body: some View {
//        Image(systemName: "heart.fill")
//            .resizable()
//            .scaledToFit()
//            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
//            // .font(.largeTitle)
//            .frame(width: 300, height: 300)
        
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            //.foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
            .font(.title)
            //.frame(width: 300, height: 300)
    }
}

#Preview {
    SystemIcons()
}
