//
//  Registration2user.swift
//  Habhoob
//
//  Created by lama aljebreen on 11/12/1443 AH.
//

import SwiftUI

struct Registration2user: View {
   
        @State var isLoginMode = false
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
                ScrollView {
                    VStack(spacing: 10) {
                        Picker(selection: $isLoginMode, label: Text("Picker here")) {
                            Text("Client Account")
                                .tag(true)
                            Text("Driver Account")
                                .tag(false)
                        }.pickerStyle(SegmentedPickerStyle())
                            .background(.mint)

    //                    if !isLoginMode {
                            Button {

                            } label: {
                                Image(systemName: "person.fill")
                                    .foregroundColor(.mint)
                                    .font(.system(size: 64))
                                    .padding()
                            }
    //                    }
                   
                           

                        Group {
                            TextField("Full Name", text: $FullName)
                                           
                         .border(.red, width: CGFloat(wrongFullName))
                                           
                                        
                         TextField("Phone Number", text: $PhoneNumber)
                                            
                                           
                                            
                        TextField("Email", text: $Email)
                                        
                                .border(.red, width: CGFloat(wrongEmail))
                                .keyboardType(.emailAddress)
                                .autocapitalization(.none)
                           
                            SecureField("Password", text: $password)
                                
                                .border(.red, width: CGFloat(wrongPassword))
                        }
                     
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)

                        if !isLoginMode {
                            Text("Kindly provide your driving license")
                            .font(.system(size: 18, weight: .semibold, design: .serif))
                            ZStack{
                                image1()
                                
                            }
                            
                            Text("Kindly provide your car insurance")
                                .font(.system(size: 18, weight: .semibold, design: .serif))
                            ZStack{
                                image1()
                                
                            }
                        }
                        
                        Button {
                            handleAction()
                        } label: {
                            HStack {
                                Spacer()
                                Text(isLoginMode ? "Create Client Account" : "Create Driver Account")
                                    .foregroundColor(.white)
                                    .font(.system(size: 18, weight: .semibold, design: .serif))

                                       .frame(width: 300, height: 50)
                                       .background(Color(UIColor.systemMint))
                                        .cornerRadius(10)
                                Spacer()
                            }

                        }
                    }
                    .padding()

                }
                .navigationTitle("New Registration")
                .background(Color(.init(gray: 0, alpha: 0.05))
//                    .foregroundColor(Color("Color1"))
                                .ignoresSafeArea())
            }
        }

        private func handleAction() {
            if isLoginMode {
                print("Should log into Firebase with existing credentials")
            } else {
                print("Register a new account inside of Firebase Auth and then store image in Storage somehow....")
            }
        }
    }


struct Registration2user_Previews: PreviewProvider {
    static var previews: some View {
        Registration2user()
    }
}
