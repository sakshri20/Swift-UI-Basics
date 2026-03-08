//
//  InitAndEnums.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct InitAndEnums: View {
    
    let background: Color
    let count: Int
    let title: String
    
    enum Fruit {
        case apple, orange, mango
    }
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        switch fruit {
            
        case .apple:
            self.background = .red
            self.title = "Apples"
            
        case .orange:
            self.background = .orange
            self.title = "Oranges"
            
        case .mango:
            self.background = .yellow
            self.title = "Mangoes"
            
        }
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text("\(count)")
                .font(.title)
                .foregroundColor(.white)
                .underline()
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 100)
        .background(background)
        .cornerRadius(20)
    }
}

#Preview {
    HStack {
        InitAndEnums(count: 48, fruit: .mango)
        InitAndEnums(count: 20, fruit: .orange)
        InitAndEnums(count: 84, fruit: .apple)
    }
    
}
