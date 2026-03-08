//
//  GridsExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/22/26.
//

import SwiftUI

struct GridsExample: View {
    
//    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(100), spacing: nil, alignment: nil),
//        GridItem(.fixed(75), spacing: nil, alignment: nil),
//        GridItem(.fixed(50), spacing: nil, alignment: nil)
//    ]
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
    ]
    
//    let columns: [GridItem] = [
//        GridItem(.adaptive(minimum: 10, maximum: 300), spacing: nil, alignment: nil),
//        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil),
//    ]
    
    var body: some View {
        
        ScrollView {
            Rectangle()
                .fill(.white)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                            ,
                            content: {
                        ForEach(0..<50, content: { index in
                            Rectangle()
                                .frame(height: 150)
                        })
                    })
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                            ,
                            content: {
                        ForEach(0..<50, content: { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 150)
                        })
                    })
            })
            .padding(.horizontal,5)
        }
    }
}

#Preview {
    GridsExample()
}
