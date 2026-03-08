//
//  AlertExample.swift
//  SwiftUIBasics
//
//  Created by Sakshi Shrivastava on 3/1/26.
//

import SwiftUI

struct AlertExample: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor = Color.yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var myAlertType: AlertType? = nil
    
    enum AlertType {
        case error
        case success
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("Button 1", action: {
                    myAlertType = .error
//                    alertTitle = "ERROR UPLOADING VIDEO!"
//                    alertMessage = "The video could not be uploaded."
                    showAlert.toggle()
                })
                
                Button("Button 2", action: {
                    myAlertType = .success
//                    alertTitle = "Successfully uploaded your video 🥳."
//                    alertMessage = "The video is now public."
                    showAlert.toggle()
                })
            }
        }
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    
    func getAlert() -> Alert {
        
        switch myAlertType {
        case .error:
            return Alert(title: Text("There was an alert!"))
        case .success:
            return Alert(
                title: Text("Success"),
                message: Text("This was a success!"),
                dismissButton: .default(Text("OK"), action: {
                    backgroundColor = .purple
                })
            )
        case nil:
            return Alert(title: Text("ERROR!"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK"))
//        )
        
//        return Alert(
//            title: Text("There was an error!"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(
//                Text("DELETE"),
//                action: {
//                    backgroundColor = .pink
//                }),
//            secondaryButton: .cancel())
        
        // Alert(title: Text("There was an error!"))
    }
}

#Preview {
    AlertExample()
}
