//
//  Registration2user.swift
//  Habhoob
//
//  Created by lama aljebreen on 11/12/1443 AH.
//

import SwiftUI
import KRProgressHUD


struct Registration2user: View, ImageSelected {
    
    func imageDriverCarLicence(img: UIImage) {
        driverCarLicenceImage = img
    }
    func imageDriverCarInsurance(img: UIImage) {
        driverCarinsuranceImage = img
    }
    let verticalPaddingForForm = 120.0
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State private var driverCarinsuranceImage = UIImage()
    @State private var driverCarLicenceImage = UIImage()
    @State var showAlert = false
    @State var errorString = ""
    @State private var isUserType = true
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
    @State var shouldGoToWhatEverPage11: Bool = false
   

    var body: some View {
//            NavigationView {
            ZStack
            {
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
                            .padding(.init(top: verticalPaddingForForm - 50, leading: 0, bottom: 0, trailing: 0))
                    ScrollView {
                        VStack(spacing: 10) {
                            Text("New Registration")
                                 .font(.system(size: 18, weight: .semibold, design: .serif))
                            Picker(selection: $isUserType, label: Text("Picker here")) {
                                Text("Client Account")
                                    .tag(true)
                                Text("Driver Account")
                                    .tag(false)
                            }.pickerStyle(SegmentedPickerStyle())
                                .background(.mint)
                                .frame(width: 300, height: 40)

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
                            }.padding()
                         
                            .frame(width: 300, height: 50)
                            .background(Color.white)
                            .cornerRadius(10)

                            if !isUserType {
                                Text("Kindly provide your driving license")
                                .font(.system(size: 18, weight: .semibold, design: .serif))
                                ZStack{
                                    image1(imageType: .driverCarLicenceImage, delegate: self)
                                    
                                }
                                
                                Text("Kindly provide your car insurance")
                                    .font(.system(size: 18, weight: .semibold, design: .serif))
                                ZStack{
                                    image1(imageType: .driverCarInsuranceImage, delegate: self)
                                    
                                }
                            }
                            NavigationLink(isActive: $shouldGoToWhatEverPage11, destination: {
                                new_order_sarah2()
                            }, label: {
                            })
                        
                            Button {
    //                            handleAction()
                                shouldGoToWhatEverPage11 = true
                            } label: {
                                HStack {
                                    Spacer()
                                    Text(isUserType ? "Create Client Account" : "Create Driver Account")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .semibold, design: .serif))

                                           .frame(width: 300, height: 50)
                                           .background(Color(UIColor.systemMint))
                                            .cornerRadius(10)
                                    Spacer()
                                }
                            }
                        }
                        .padding(.top, verticalPaddingForForm + 30)

                    }.frame(width: UIScreen.main.bounds.size
                        .width, height: UIScreen.main.bounds.size
                        .height - 100)
                    .offset(y:50)
//                    .edgesIgnoringSafeArea(.top)
                }
            }
            .edgesIgnoringSafeArea(.top)
//                .navigationTitle("New Registration")
//                .background(.systemMint)
////                    .foregroundColor(Color("Color1"))
//                                .ignoresSafeArea())
//            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
    //        .navigationBarItems(leading: btnBack)
//            .navigationTitle("New Registration")
//
//                    .edgesIgnoringSafeArea(.bottom)
                    .navigationBarItems(leading:
                        Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
                            self.mode.wrappedValue.dismiss()
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
            if isLoginMode {
                print("Should log into Firebase with existing credentials")
            } else {
                print("Register a new account inside of Firebase Auth and then store image in Storage somehow....")
                print("Email===",Email)
                if isUserType{
                        if FullName.isEmpty{
                            errorString = "Please enter your name"
                            showAlert = true
                        } else if PhoneNumber.isEmpty{
                            errorString = "Please enter your phone"
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
                            AuthViewModel().createCustomerRegister(fullname:FullName,phoneNumber:PhoneNumber, roleType: .user ,email: Email, password: password){userId,error in
                                KRProgressHUD.dismiss()
                                if error == nil{
                                    print("userId===",userId ?? "Nothing")
                                    self.shouldGoToWhatEverPage11.toggle()
//                                    self.presentationMode.wrappedValue.dismiss()
                                }else{
                                    self.presentationMode.wrappedValue.dismiss()
                                    print("error===",error?.localizedDescription ??  "Error Occured")
                                    self.errorString = error?.localizedDescription ?? "Error Occured"
                                    self.showAlert = true
                                }
                            }
                        }
                }
                else{
                    if FullName.isEmpty{
                        errorString = "Please enter your name"
                        showAlert = true
                    } else if PhoneNumber.isEmpty{
                        errorString = "Please enter your phone"
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
                    else if driverCarLicenceImage.size.height == 0.0 {
                        errorString = "Please select Driving License"
                        showAlert = true
                    } else if driverCarinsuranceImage.size.height == 0.0 {
                        errorString = "Please select insurance image"
                        showAlert = true
                    }else{
                        KRProgressHUD.show(withMessage: "Please Wait...")
                        var driverCarLicenceImageUrl = ""
                        var driverCarinsuranceImageUrl = ""
                        driverCarLicenceImage.uploadMedia { url in
                            driverCarLicenceImageUrl = url ?? ""
                            driverCarinsuranceImage.uploadMedia { url in
                                driverCarinsuranceImageUrl = url ?? ""
                                AuthViewModel().createDriverRegister(fullname:FullName,phoneNumber:PhoneNumber, roleType: .driver, driverMode: .on ,email: Email,password: password, profileImageUrl:"",driverLicenceImageUrl:driverCarLicenceImageUrl, insuranceImageUrl:driverCarinsuranceImageUrl){userId,error in
                                    KRProgressHUD.dismiss()
                                    if error == nil{
                                        print("userId===",userId ?? "Nothing")
                                        self.shouldGoToWhatEverPage11.toggle()
//                                        self.presentationMode.wrappedValue.dismiss()
                                    }else{
                                        self.presentationMode.wrappedValue.dismiss()
                                        print("error===",error?.localizedDescription ??  "Error Occured")
                                        errorString = error?.localizedDescription ?? "Error Occured"
                                        showAlert = true
                                    }
                                }
                            }
                        }
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


struct Registration2user_Previews: PreviewProvider {
    static var previews: some View {
        Registration2user()
    }
}
