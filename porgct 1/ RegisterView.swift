//
//   RegisterView.swift
//  Habhoob
//
//  Created by lama aljebreen on 21/12/1443 AH.
//


import SwiftUI
import FirebaseAuth
import FirebaseFirestore

struct RegisterView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var isLoginMode = false
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var selectedType: Int = 1
    @State private var showingAlert: Bool = false
    @State private var alertTitle: String = ""
    @State private var showingLoginScreen = false
    @State var shouldGoToWhatEverPage11: Bool = false

  @State private var FullName = ""
//    @State private var Email = ""
  @State private var PhoneNumber = ""

  @State private var wrongFullName: Float = 0
//    @State private var wrongEmail: Float = 0

//    @State var shouldGoToWhatEverPage2: Bool = false

    func registerAction(user: String, pass: String){
        
        Auth.auth().createUser(withEmail: user, password: pass) { authResult, error in
            if let error = error {
                showAlert("\(error.localizedDescription)")
            }else if let result = authResult {
                let uid = result.user.uid
                //let email = result.user.email
                //print("\(uid) ,,, \(email)")
                setUserTypeAction(uid: uid)
            }else{
                showAlert("Something went wrong, please try agin.")
            }
        }
    }

    func setUserTypeAction(uid: String){
        
        let db = Firestore.firestore()
        //var ref: DocumentReference? = nil
        
        let userData : [String:Any] = [
            "uid": uid,
            "type": selectedType,
            "timestamp": Date().timeIntervalSince1970
        ]
        
        db.collection("users").document(uid).setData(userData) { err in
            if let err = err {
                print("Error writing document: \(err)")
            } else {
                print("Document successfully written!")
                //go back to login
                presentationMode.wrappedValue.dismiss()
            }
        }

//        ref = db.collection("users").addDocument(data: userData) { err in
//            if let err = err {
//                showAlert("Error adding document: \(err)")
//            } else {
//                showAlert("Document added with ID: \(ref?.documentID ?? "N/A")")
//            }
//        }
        
    }
    
    func showAlert(_ title: String){
        alertTitle = title
        showingAlert = true
    }
//  التصميم
    var body: some View {
//        NavigationView {
            ScrollView {
            
                VStack(spacing: 10) {
                    Picker(selection: $isLoginMode, label: Text("Picker here")) {
                        Text("Client Account")
                            .tag(true)
                        Text("Driver Account")
                            .tag(false)
                    }.pickerStyle(SegmentedPickerStyle())
                        .background(.mint)


                        Button {

                        } label: {
                            Image(systemName: "person.fill")
                                .foregroundColor(.mint)
                                .font(.system(size: 64))
                                .padding()
                        }
                    Group {
                        TextField("Full Name", text: $FullName)
                                       
                     .border(.red, width: CGFloat(wrongFullName))
                                       
                                    
                    TextField("Phone Number", text: $PhoneNumber)
        TextField(
                    "User name (email address)",
                    text: $username)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                
        SecureField(
                    "Password",
                    text: $password
                )
                    }.padding()
                    
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
                    
                    NavigationLink(isActive: $shouldGoToWhatEverPage11, destination: {
                                           new_order_sarah2()
                                       }, label: {
                                       })
                    Button {
                        handleAction()
                        registerAction(user: username, pass: password)
                    } label: {
                        HStack {
                            Spacer()
                            Text(isLoginMode ? "Create Client Account" : "Create Driver Account")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .semibold, design: .serif))

                                   .frame(width: 300, height: 50)
                                   .background(Color(UIColor.systemMint))
                                    .cornerRadius(10)
//                    registerAction(user: username, pass: password)
                            
                            Spacer()
            }
                    }
                
            .padding()
            
          
               
        }
            }
        .navigationTitle("New Registration")
        .background(Color(.init(gray: 0, alpha: 0.05))
                        .ignoresSafeArea())
        .alert(alertTitle, isPresented: $showingAlert) {
            Button("OK", role: .cancel) { }
        }
//        }
    }
        private func handleAction() {
            if isLoginMode {
                print("Should log into Firebase with existing credentials")
            } else {
                print("Register a new account inside of Firebase Auth and then store image in Storage somehow....")
            }
        }

}
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
