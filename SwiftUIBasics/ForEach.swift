//
//  ForEach.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct ForEachExample: View {
    
    let data = ["Hi", "Hello", "Hey Everyone"]
    
    var body: some View {
        VStack {
//            ForEach(0..<9, content: { index in
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    
//                    Text("index is: \(index)")
//                }
//            })
            
            // if you want to use indices
            ForEach(data.indices) { item in
                Text("\(data[item]): index is \(item)")
            }
            
            // If you directly want to print the items
            ForEach(data, id: \.self) { item in
                Text("\(item)")
            }
        }
    }
}

#Preview {
    ForEachExample()
}
