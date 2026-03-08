//
//  SheetsExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 2/20/26.
//

import SwiftUI

struct SheetsExample: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack {
            // background
            Color.green
                .ignoresSafeArea()
            
            // foreground
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(content: {
                        Color.white.cornerRadius(10)
                    })
            })
            .fullScreenCover(isPresented: $showSheet, content: {
                SheetView()
            })
//            .sheet(isPresented: $showSheet, content: {
//                SheetView()
//            })
            /**
                            Very Very important note
             1. Only add one sheet per view/ per hierarchy. Do not add multiple sheets.
             2. Do not add conditional lofic inside the sheet. Like
             if {
             // show sheet 1
             } else {
             // show sheet 2
             }
             
             3. We can only show either fullScreenCover or sheet per view heirarchy
             */
        }
        
    }
}

// Method 1 with @Binging var

//struct SheetView: View {
//    
//    @Binding var showSheet: Bool
//    
//    var body: some View {
//        ZStack(alignment: .topLeading) {
//            // background
//            Color.red
//                .ignoresSafeArea()
//            
//            // foreground
//            
//            Button(action: {
//                showSheet = false
//            }, label: {
//                Image(systemName: "xmark")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .padding(20)
//            })
//        }
//        
//    }
//}

// Method 1 with @Environment var
struct SheetView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // background
            Color.red
                .ignoresSafeArea()
            
            // foreground
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
        
    }
}

#Preview {
    SheetsExample()
}

