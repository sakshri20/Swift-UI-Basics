//
//  SheetAndTransitionAndOffsets.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 3/1/26.
//

import SwiftUI

struct SheetAndTransitionAndOffsets: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            // background
            Color.orange
                .ignoresSafeArea()
            
            // foreground
            VStack {
                Button("Button", action: {
                    showNewScreen.toggle()
                })
                .padding()
                .background(Color.white.cornerRadius(10))
                
                Spacer()
            }
            
            // Method 1 - Sheets
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // Method 2 - Transition
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring, value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            // Method 3 - OffSet
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0.0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showNewScreen)
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // background
            Color.purple
                .cornerRadius(20)
                .ignoresSafeArea()
            
            // foreground
            VStack {
                Button(action: {
                    // presentationMode.wrappedValue.dismiss()
                    showNewScreen = false
                }, label: {
                    Image(systemName: "xmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                })
            }
        }
    }
}

#Preview {
    SheetAndTransitionAndOffsets()
}
