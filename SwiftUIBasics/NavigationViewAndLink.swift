//
//  NavigationViewAndLink.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 3/1/26.
//

import SwiftUI

/* Important notes:

1. You should NEVER add a NavigationView inside a NAvigationView.
2. You only ever need one NavigationView, which is created at the start of the App.
3. For NavigationView you need to add all the modifier to it's subview. i.e all the
 modiffiers will be inside NavigationView unlike other components.
*/

struct NavigationViewAndLink: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                
                NavigationLink("Move to Next Screen",
                               destination: SecondScreen())
                
                ForEach(0..<50, content: { index in
                    Text("My Text")
                })
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                , trailing: NavigationLink(destination: {
                    SecondScreen()
                }, label: {
                    Image(systemName: "gear")
                })
                .tint(.blue)
            )
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
                .navigationTitle("Second Screen")
                .navigationBarHidden(true)
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.white)
            })
            
            HStack {
                Spacer()
                NavigationLink("Third Screen", destination: { Text("Third Screen")})
                Spacer()
            }
        }
    }
}

#Preview {
    NavigationViewAndLink()
}
