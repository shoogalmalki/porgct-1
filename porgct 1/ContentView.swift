//
//  ContentView.swift
//  porgct 1
//
//  Created by shoog almalki on 28/10/1443 AH.
//

import SwiftUI
import Foundation
import Firebase
import FirebaseAuth

extension View {
    func cornerRadius7(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner7(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
    }
}
struct RoundedCorner7: Shape {

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
                  .cornerRadius7 (topLeft, corners: .topLeft)
          .cornerRadius7 (topRight, corners: .topRight)
        .cornerRadius7 (bottomLeft, corners:
                  .bottomLeft)
         .cornerRadius7 (bottomRight, corners: .bottomRight)

                .foregroundColor(backgroundcolor)
                  .frame(width: 360, height: 850)
                 .offset(x: 0, y: 120)
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

////                    HStack{
////                        Button{} label: {
////                            Text("Forgot password?")
////                                .underline()
////                                .font(.footnote)
////                                .bold()
////                                .foregroundColor(.black)
//////                                .padding(.top)
////                            offset(x: -100, y: -100)
////                    }
////                    }
//
//
                   Button("Login") {

          login(email: Email, password: password)
                                       }
                   .foregroundColor(.white)
                   .frame(width: 300, height: 50)
                    .background(Color(UIColor.systemMint))
                   .cornerRadius(10)
                    .offset(y:-60 )


//                        Button{} label: {
//                            Text("Forgot password?")
//                                .underline()
//                                .font(.footnote)
//                                .bold()
//                                .foregroundColor(.black)
////                                .padding(.top)
//                            offset(x: -40, y: -30)
//                   }
//
//
//                    NavigationLink(destination: Text("You are logged in @\(Email)"), isActive: $showingLoginScreen) {
//                        EmptyView()
                   }
                }
       }
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
                .ignoresSafeArea()
                .navigationBarHidden(true)
            
    }
    }
    

    
    
    func login(email: String,password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { res, error in
            if error == nil {
                print("Succeeded")
                
            } else {
                
                print(error?.localizedDescription)
            }
        }
    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
