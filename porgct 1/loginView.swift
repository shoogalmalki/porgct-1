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
import KRProgressHUD

struct LoginView: View {
    
    @State var showAlert = false
    @State var errorString = ""
    @State private var Email = ""
    @State private var password = ""
    @State private var wrongEmail: Float = 0
    @State private var wrongPassword: Float  = 0
    @State private var showingLoginScreen = false
    @State var shouldGoToWhatEverPage3: Bool = false
    @State var shouldGoToWhatEverPage2: Bool = false
    
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        var btnBack : some View { Button(action: {
            self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                Image("back") // set image here
                    .scaledToFit()
                    .imageScale(.small)
                    .frame(width: 25, height: 25, alignment: .center)
//                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.white)
//                    .frame(width: 35, height: 35)
//                    Text("Go back")
                }
            }
        }
        
    var body: some View {
        NavigationView {
        ZStack{
            
            ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            }
        
            ZStack{
                Rectangle()
                    .frame(width: .infinity, height: UIScreen.main
                        .bounds.size.height - 75)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .padding(.init(top: 50, leading: 0, bottom: 0, trailing: 0))
//                HStack(alignment: .top, spacing: 10){
                VStack(spacing:10){
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
                              KRProgressHUD.show(withMessage: "Please Wait...")
                              AuthViewModel().loginUser(email: Email, password: password){userModel,error in
                                  KRProgressHUD.dismiss()
                                  if error == nil{
                                      print("userId===",userModel?.userId ?? "Nothing")
                                      print("userName===",userModel?.fullName ?? "Nothing")
                                      shouldGoToWhatEverPage3.toggle()
                                  }else{
                                      print("error===",error?.localizedDescription ??  "Error Occured")
                                      errorString = error?.localizedDescription ?? "Error Occured"
                                      showAlert = true
                                  }
                              }
//                 login(email: Email, password: password)
                          }
                          .foregroundColor(.white)
                          .font(.system(size: 18, weight: .semibold, design: .serif))
                          .frame(width: 300, height: 50)
                           .background(Color(UIColor.systemMint))
                          .cornerRadius(10)
                       .padding(20)
                        
                        HStack{
                            NavigationLink(isActive: $shouldGoToWhatEverPage2, destination: {
                               Registration2user()
                            }, label: {

                            })
                             Button(action: {
                                 shouldGoToWhatEverPage2.toggle()
                             }
                                    ,label: {
                                 Text("Don't have an account? Click here for register")
                                     .underline()
                                       .font(.footnote)
                                        .bold()
                                        .foregroundColor(.black)
//                                    .padding(.top)
                             })
                             .frame(width: .infinity, height: 50)
                          }
                        Spacer()
                        
                    }.padding(.top, 90)

                    
                          }
                
//                       }
                }
        }
        .navigationBarBackButtonHidden(true)
//        .navigationBarItems(leading: btnBack)
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarItems(leading:
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        HStack {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .frame(width: 25, height: 25, alignment: .center)
            //                    .aspectRatio(contentMode: .fit)
                                .foregroundColor(.white)
                        }
                })
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
