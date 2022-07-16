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



struct NewRegistration: View {
    
    
    
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
      
            ZStack{
                ZStack{
                    Color(.systemMint)
                        .ignoresSafeArea()
                }
               
                    ZStack{
                        Rectangle()
                            .frame(width: .infinity, height: 670)
                            .foregroundColor(Color("Color1"))
                            .cornerRadius(20)
                            .offset(y:48)
            VStack {
                Text("New Registration")
                    .font(.system(size: 18, weight: .semibold, design: .serif))
//                    .bold()
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
                   .font(.system(size: 18, weight: .semibold, design: .serif))

                      .frame(width: 300, height: 50)
                      .background(Color(UIColor.systemMint))
                       .cornerRadius(10)
                       .offset(y:-60 )
//
                HStack{
                    NavigationLink(isActive: $shouldGoToWhatEverPage2, destination: {
                       LoginView()
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
