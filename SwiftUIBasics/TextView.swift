//
//  TextView.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/20/26.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Sakshi is the best. She is the strongets. She is the kindest.".capitalized)
            // .font(.body)
            // .fontWeight(.medium)
            //.underline(pattern: .dashDot, color: .red)
           // .font(.system(size: 24, weight: .semibold, design: .rounded))
            .baselineOffset(10.0)
            .kerning(5)
            .multilineTextAlignment(.leading)
            .foregroundStyle(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
        
    }
}

#Preview {
    TextView()
}
