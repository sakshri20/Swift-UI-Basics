//
//  TernaryOperators.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/23/26.
//

import SwiftUI

struct TernaryOperators: View {
    
    @State var isStartingState = false
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "It's stating point" : "it's ending point")
            
            RoundedRectangle(cornerRadius: 25)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 150 : 250,
                    height: 100
                )
            
            Spacer()
        }
    }
}

#Preview {
    TernaryOperators()
}
