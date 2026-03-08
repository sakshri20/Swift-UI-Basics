//
//  ScrollViewExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/22/26.
//

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
//        ScrollView(.horizontal, showsIndicators: false,content: {
//            HStack {
//                ForEach(0..<30, content: { index in
//                    Rectangle()
//                        .fill(.blue)
//                        .frame(width: 200, height: 300)
//                })
//            }
//        })
        
        ScrollView {
            VStack {
                ForEach(0..<10, content: { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(0..<20, content: { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 200)
                                    .shadow(radius: 10)
                                    .padding()
                            })
                        }
                    })
                })
            }
        }
    }
}

#Preview {
    ScrollViewExample()
}
