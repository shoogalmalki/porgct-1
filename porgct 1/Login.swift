//
//  loginView.swift
//  Habhoob
//
//  Created by lama aljebreen on 08/12/1443 AH.
//

import SwiftUI
import FirebaseAuth
import KRProgressHUD
import FirebaseFirestore

struct Login: View {
    
    let verticalPaddingForForm = 120.0
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

//        var btnBack : some View { Button(action: {
//            self.presentationMode.wrappedValue.dismiss()
//            }) {
//                HStack {
//                Image("back") // set image here
//                    .scaledToFit()
//                    .imageScale(.small)
//                    .frame(width: 25, height: 25, alignment: .center)
////                    .aspectRatio(contentMode: .fit)
//                    .foregroundColor(.white)
////                    .frame(width: 35, height: 35)
////                    Text("Go back")
//                }
//
//
//            }else{
//                //rare case
////                showAlert("Could not find user type, let the user select the type before going to the app")
//            }
//        }
        
//        db.collection("users").whereField("uid", isEqualTo: uid).limit(to: 1).getDocuments() { (querySnapshot, err) in
//            if let err = err {
//                showAlert("Error getting documents: \(err)")
//            } else if let query = querySnapshot, let document = query.documents.first {
//
//                let data = document.data()
//                if let type = data["type"] as? Int {
//                    UserDefaults.standard.set(type, forKey: "currentUserType")
//                    if type == 1 {
//                        //go to client views
//                        presentClient = true
//                    }else if type == 2 {
//                        //go to client views
//                        presentProvider = true
//                    }else{
//                        showAlert("User type is not supported")
//                    }
//                }else{
//                    showAlert("Could not find user type, let the user select the type before going to the app")
//                }
//            }else{
//                showAlert("Something went wrong, please try agin.")
//            }
//        }
        
//    }
    
//    func showAlert(_ title: String){
//        alertTitle = title
//        showingAlert = true
//    }
    
    var body: some View {
//        NavigationView {
        ZStack{
            
            ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            }
            ZStack{
                Rectangle()
                    .frame(width: .infinity, height: UIScreen.main
                        .bounds.size.height - verticalPaddingForForm)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .padding(.init(top: verticalPaddingForForm, leading: 0, bottom: 0, trailing: 0))
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
                            CustomerPlaceOrder()
                        }, label: {
                            
                        })
                        
                          Button("Login") {
                              switch appEnvironmentType{
                              case .development:
                                  shouldGoToWhatEverPage3.toggle()
                                  break
                              case .staging:
                                  handleAction()
                                  break
                              case .production:
                                  break
                              }
                          }
                          .foregroundColor(.white)
                          .font(.system(size: 18, weight: .semibold, design: .serif))
                          .frame(width: 300, height: 50)
                           .background(Color(UIColor.systemMint))
                          .cornerRadius(10)
                          .padding(20)
                          .alert(errorString, isPresented: $showAlert) {
                              Button("OK", role: .cancel) { }
                          }
                        
                        HStack{
                            NavigationLink(isActive: $shouldGoToWhatEverPage2, destination: {
                                Registration()
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
                        
                    }.padding(.top, verticalPaddingForForm + 30)

                    
            }
                
//                       }
                }
        .navigationBarTitle("", displayMode: .inline)
//        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(false)
//        .navigationBarItems(leading: btnBack)
        .edgesIgnoringSafeArea(.all)
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
    private func handleAction() {
        
        if Email.isEmpty{
            errorString = "Please enter your email"
            showAlert = true
        } else if !validateEmail(enteredEmail: Email){
            errorString = "Please enter a valid email"
            showAlert = true
        } else if password.isEmpty{
            errorString = "Please enter password"
            showAlert = true
        } else if password.count < 6 {
            errorString = "Password must by 6 character long"
            showAlert = true
        }
        else{
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
        }
    }
    func validateEmail(enteredEmail:String) -> Bool {
        
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: enteredEmail)
        
    }
  
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
