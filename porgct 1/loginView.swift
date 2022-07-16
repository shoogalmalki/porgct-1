//
//  loginView.swift
//  Habhoob
//
//  Created by lama aljebreen on 08/12/1443 AH.
//

import SwiftUI
import Foundation
import Firebase
import FirebaseAuth

struct LoginView: View {
    
      @State private var Email = ""
      @State private var password = ""
      @State private var wrongEmail: Float = 0
      @State private var wrongPassword: Float  = 0
      @State private var showingLoginScreen = false
   @State var shouldGoToWhatEverPage3: Bool = false
    
    var body: some View {
        ZStack{
            ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            }
        
            ZStack{
            Rectangle()
                .frame(width: 380, height: 650)
                .foregroundColor(Color("Color1"))
                .cornerRadius(20)
                .offset(y:58)
                ZStack{
                    VStack{
                           Text("Login")
                            .font(.system(size: 18, weight: .semibold, design: .serif))
                              

               TextField("Email", text: $Email)
                          .padding()
                           .frame(width: 300, height: 50)
                           .background(Color.white)
                         .cornerRadius(10)
                 .border(.red, width: CGFloat(wrongEmail))
//                 .offset( y:-70 )


           SecureField("Password", text: $password)
                            .padding()
                             .frame(width: 300, height: 50)
                              .background(Color.white)
                             .cornerRadius(10)
                      .border(.red, width: CGFloat(wrongPassword))
//                              .offset( y:-70 )

//                         HStack{
//                            Button{} label: {
//                              Text("Forgot password?")
//                                 .underline()
//                                      .font(.footnote)
//                                      .bold()
//                                     .foregroundColor(.black)
//                                    .padding(.top)
//                         offset(x: -10, y: -10)
//                      }
//                       }
       
    
                        NavigationLink(isActive: $shouldGoToWhatEverPage3, destination: {
                            new_order_sarah2()
                        }, label: {
                            
                        })
                        
                          Button("Login") {
                              shouldGoToWhatEverPage3.toggle()

                 login(email: Email, password: password)
                                              }
                          .foregroundColor(.white)
                          .font(.system(size: 18, weight: .semibold, design: .serif))
                          .frame(width: 300, height: 50)
                           .background(Color(UIColor.systemMint))
                          .cornerRadius(10)
                       .offset(y:25 )
                        
                    }
                    
                          }
                
                       }
                }
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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
