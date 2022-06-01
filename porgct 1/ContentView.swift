//
//  ContentView.swift
//  porgct 1
//
//  Created by shoog almalki on 28/10/1443 AH.
//

import SwiftUI
import Foundation
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ContentView: View {
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)

    
  
    @State private var Email = ""
    @State private var password = ""
    @State private var wrongEmail: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle ()
                    .cornerRadius (topLeft, corners: .topLeft)
            .cornerRadius (topRight, corners: .topRight)
            .cornerRadius (bottomLeft, corners:
                    .bottomLeft)
            .cornerRadius (bottomRight, corners: .bottomRight)
                
                    .foregroundColor(backgroundcolor)
                    .frame(width: 360, height: 850)
                    .offset(x: 0, y: 130)
                VStack {
                    Text("Login")
                        .bold()
                        .offset(x: -1, y:-70 )
                    
        TextField("Email", text: $Email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
            .border(.red, width: CGFloat(wrongEmail))
            .offset( y:-70 )
                    
                    
        SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                        .offset( y:-70 )
                    
                    
                    Button("Login") {
//                        authenticateUser(username: username, Email: Email, password: password)
                                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color(UIColor.systemMint))
                    .cornerRadius(10)
                    .offset(y:-60 )
                    
                    NavigationLink(destination: Text("You are logged in @\(Email)"), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }.background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
                .ignoresSafeArea()
                .navigationBarHidden(true)
            
        }
    }
    
    func authenticateUser(username: String, password: String, Email: String) {
        if Email.lowercased() == "@" {
            wrongEmail = 0
            if password.lowercased() == "abc123" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 2
            }
        } else {
            wrongEmail = 2
        }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
