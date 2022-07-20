//
//  loginView.swift
//  Habhoob
//
//  Created by lama aljebreen on 08/12/1443 AH.
//

import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct LoginView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showingAlert: Bool = false
    @State private var alertTitle: String = ""
    @State private var presentClient: Bool = false
    @State private var presentProvider: Bool = false

    func loginAction(user: String, pass: String){
        
        Auth.auth().signIn(withEmail: user, password: pass) { authResult, error in

            if let error = error {
                showAlert("\(error.localizedDescription)")
            }else if let uid = authResult?.user.uid {
                getUserType(uid: uid)
            }else{
                showAlert("Something went wrong, please try agin.")
            }
        }
    }
    
    func getUserType(uid: String){
        
        let db = Firestore.firestore()
        
        
        db.collection("users").document(uid).getDocument() { (document, err) in
            
            if let err = err {
                showAlert("Error getting documents: \(err)")
                return
            }
            
            guard let document = document, document.exists,
                  let data = document.data() else {
                return
            }
            
            if let type = data["type"] as? Int {
                
                //save user type to use it later in the app
                UserDefaults.standard.set(type, forKey: "currentUserType")
                
                //check user type
                switch type {
                case 1:
                    //go to client views
                    presentClient = true
                case 2:
                    //go to provider views
                    presentProvider = true
                default:
                    showAlert("User type is not supported")
                }
                
                
            }else{
                //rare case
                showAlert("Could not find user type, let the user select the type before going to the app")
            }
        }
        
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
        
    }
    
    func showAlert(_ title: String){
        alertTitle = title
        showingAlert = true
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                ZStack{
                Color(.systemMint)
                    .ignoresSafeArea()
                }
                ZStack{
                Rectangle()
                    .frame(width: 380, height: 690)
                    .foregroundColor(Color("Color1"))
                    .cornerRadius(20)
                 
                    ZStack{
                        VStack(alignment: .center, spacing: 50) {
                VStack {
        TextField(
                        "User name (email address)",
                        text: $username)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                   
                     .frame(width: 300, height: 50)
                      .background(Color.white)
                     .cornerRadius(10)
        SecureField(
                        "Password",
                        text: $password
                    )
                  
                     .frame(width: 300, height: 50)
                      .background(Color.white)
                     .cornerRadius(10)
                    
                    Button("Login") {
                        loginAction(user: username, pass: password)
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold, design: .serif))
                    .frame(width: 300, height: 50)
                     .background(Color(UIColor.systemMint))
                    .cornerRadius(10)
                
                }
                .padding()
                
                HStack{
                    Text("You don't have account ?")
                    NavigationLink{
                        RegisterView()
                    } label: {
                        Text("Register")
                    }
                }
                
            }
            .alert(alertTitle, isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            }
//            .fullScreenCover(isPresented: $presentClient, content: { ClientView() })
//            .fullScreenCover(isPresented: $presentProvider, content: { ProviderView() })
            .navigationTitle("Login")
           
        }
     .navigationViewStyle(StackNavigationViewStyle())
        
        }
    }
//    end Z
    }
}
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
