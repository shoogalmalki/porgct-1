//
//  New Registration.swift
//  porgct 1
//
//  Created by lama aljebreen on 02/11/1443 AH.
//

import SwiftUI
import Foundation
import Firebase
import FirebaseAuth

extension View {
    func cornerRadius10(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner10(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
    }
}
struct RoundedCorner10: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct NewRegistration: View {
    
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    
    @State private var FullName = ""
    @State private var Email = ""
    @State private var PhoneNumber = ""
    @State private var password = ""
    @State private var wrongFullName: Float = 0
    @State private var wrongEmail: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    @State var shouldGoToWhatEverPage2: Bool = false
    var body: some View {
        NavigationView {
           ZStack {
            Rectangle ()
                .cornerRadius10 (topLeft, corners: .topLeft)
        .cornerRadius10 (topRight, corners: .topRight)
        .cornerRadius10 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius10 (bottomRight, corners: .bottomRight)
            
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
            VStack {
                Text("New Registration")
                    .bold()
                    .offset(x: -1, y:-70 )
                
    TextField("Full Name", text: $FullName)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                   .border(.red, width: CGFloat(wrongFullName))
                    .offset( y:-70 )
                
        TextField("Phone Number", text: $PhoneNumber)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
                    .offset( y:-70 )
                    
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
                
                


                   Button("Registration") {
//                       authenticateUser(username: FullName, password: password , Email: Email)
//                       }
//                                               register()
//
//                         register(email: Email, password: password)
//                                   createUser(email: Email, password: password)
//
                      register(email: Email, password: password)
//
                  }
//
                   .foregroundColor(.white)
                   .font(.footnote)

                      .frame(width: 300, height: 50)
                      .background(Color(UIColor.systemMint))
                       .cornerRadius(10)
                       .offset(y:-60 )
//
                HStack{
                    NavigationLink(isActive: $shouldGoToWhatEverPage2, destination: {
                        Login()
                    }, label: {

                    })
                     Button(action: {
                         shouldGoToWhatEverPage2.toggle()
                     }
                            ,label: {
                         Text("Already have an account? Login")
                             .underline()
                               .font(.footnote)
                                                            .bold()
                                .foregroundColor(.black)
                            .padding(.top)
                     })
                  }
                NavigationLink(destination: Text("You are logged in @\(FullName)"), isActive: $showingLoginScreen) {
                    EmptyView()
               }
           }
          
        }
     .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
           .ignoresSafeArea()
          .navigationBarHidden(true)
        
    }
    }
    //   func register(){
    //        Auth.auth().createUser(withEmail: Email, password: password) { result, error in
    //           if error ! = nill  {
    //              print(error!.localizedDescription)
    //    }
    //   }
    //    }
    func register(email: String,password: String) {
        Auth.auth().createUser(withEmail: email, password: password) { res, error in
            if error == nil {
                print("Succeeded")
                showingLoginScreen.toggle()
            } else {
                
                print(error?.localizedDescription)
            }
        }
    }
}





struct NewRegistration_Previews: PreviewProvider {
    static var previews: some View {
        NewRegistration()
    }
}
