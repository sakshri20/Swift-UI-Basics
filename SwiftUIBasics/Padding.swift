//
//  Padding.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/21/26.
//

import SwiftUI

struct Padding: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//           // .frame(width: 100, height: 100)
//            .background(.yellow)
//            // .padding()
//            .padding(.all, 10)
//            .padding(.leading, 20)
//            .background(.blue)
        
//        Text("Sakshi is the best")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .padding(.leading, 10)
        
        VStack(alignment: .leading) {
            
            Text("Sakshi is the best")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("bhbhjbk njnknjnj lknljnk njnlnn lknlnkln lknlnl nlknlkk nnlllkn lknlnkl bnjlb nljn lkjljjlj fatuywiuiojq kk;asjionj")
        
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10 ,
                    x: 0.0, y: 10.0)
        )
        
    }
}

#Preview {
    Padding()
}
