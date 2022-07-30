//
//  profile.user.swift
//  porgct 1
//
//  Created by sarah hemood  on 19/11/1443 AH.
//

import SwiftUI
import FirebaseAuth

struct CustomerProfile: View {
    @State var toggleIsOn: Bool = false
    @State var shouldGoToMyOrders: Bool = false
    @State var shouldGoToDriverAccount:Bool = false
    @State var isShowAlert:Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ZStack{
                Color("Color1")
                    .ignoresSafeArea()
                VStack(spacing:60){
          
                    HStack(spacing:100){
                        HStack{
//                            Image(systemName: "person.fill")
//                                .foregroundColor(.mint)
//                                .font(.system(size: 64))
//                                .padding()
                            Image(systemName: "person.fill")
                                .foregroundColor(.mint)
                                .font(.system(size: 64))
//                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                            VStack{
                                HStack{
                                    Text(UserDefaults.standard.object(forKey: LOGIN_USER_NAME) as? String ?? "")
                                        .font(.system(size: 17, weight:.bold, design: .default))
                                        .foregroundColor(Color("Color3"))
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color.orange)
                                        .frame(width:10.0 , height: 22)
                                        .font(.system(size: 12, weight: .bold, design: .default))
                                    Text("4.9")
                                        .font(.caption)
                                        .fontWeight(.medium)
                                }
                                Text("Balance :300 SAR")
                                    .font(.system(size: 13, weight:.regular, design: .default))
                                
                            }
                        }
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(Color("Color3"))
                            .font(.system(size: 16, weight:.bold, design: .default))
                        
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 300, height:220)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        VStack(alignment:.leading, spacing: 9){
                            Text("Account")
                                .font(.system(size: 16, weight:.bold, design: .default))
                            NavigationLink(isActive: $shouldGoToMyOrders, destination: {
                                CustomerMyOrders()
                            }, label: {
                            })
                            Button(action: {                            shouldGoToMyOrders.toggle()
                            }
                                   , label: {
                                
                                HStack(spacing:166){
                                    HStack{
                                        Image(systemName: "person")
                                            .foregroundColor(Color("Color3"))
                                        Text("My Orders")
                                            .font(.system(size: 15, weight: .regular, design: .default))
                                            .frame(width: .infinity, height: 35)
                                    }
                                    Image(systemName: "chevron.right")
                                }
                            })
                            
                            
                            HStack(spacing:170){
                                HStack{
                                    Image(systemName: "equal.square")
                                        .foregroundColor(Color("Color3"))
                                    Text("Feedback")
                                        .font(.system(size: 15, weight: .regular, design: .default))
                                        .frame(width: .infinity, height: 35)
                                }
                                Image(systemName: "chevron.right")
                            }
                            
                            HStack(spacing:174){
                                HStack{
                                    Image("Image1-2")
                                        .foregroundColor(Color("Color3"))
                                    Text("Coupons")
                                        .font(.system(size: 15, weight: .regular, design: .default))
                                        .frame(width: .infinity, height: 35)
                                }
                                Image(systemName: "chevron.right")
                                
                            }
                            HStack(spacing:165){
                                HStack{
                                    Image("Image2-2")
                                        .foregroundColor(Color("Color2"))
                                    Text("Contact us")
                                        .font(.system(size: 14, weight: .regular, design: .default))
                                        .frame(width: .infinity, height: 35)
                                }
                                Image(systemName: "chevron.right")
                                
                            }
                        }
                        
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 300, height:135)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        VStack(alignment:.leading, spacing: 11){
                            Text("Other")
                                .font(.system(size: 15, weight:.bold, design: .default))
                            
                            NavigationLink(isActive: $shouldGoToDriverAccount, destination: {
                                Driver_account()
                            }, label: {
                            })
                            Button(action: {                            shouldGoToDriverAccount.toggle()
                            }
                                   , label: {
                                
                                HStack(spacing:140){
                                    HStack{
                                        Image(systemName: "power")
                                            .foregroundColor(Color("Color3"))
                                        Text("Driver Account")
                                            .font(.system(size: 15, weight: .regular, design: .default))
                                            .frame(width: .infinity, height: 35)
                                    }
                                    Image(systemName: "chevron.right")
                                    
                                }
                            })
                            
                            HStack(spacing:175){
                                HStack{
                                    Image( "Image4-2")
                                        .foregroundColor(Color("Color2"))
                                    Text("Language")
                                        .font(.system(size: 14, weight: .regular, design: .default))
                                        .frame(width: .infinity, height: 35)
                                }
                                Image(systemName: "chevron.right")
                                
                            }
                            
                        }
                        
                    }
                    
                    Button("Sign out") {
                        isShowAlert = true
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold, design: .serif))
                    .frame(width: 300, height: 50)
                     .background(Color(UIColor.systemMint))
                    .cornerRadius(10)
                    .alert("Are you sure , you want to logout?", isPresented: $isShowAlert) {
                        Button("Yes", role: .cancel) {
                            AuthViewModel().handleSignout()
                            presentationMode.wrappedValue.dismiss()
                        }
                        Button("No", role: .destructive) {
                            
                        }
                    }
                }.padding(.top,10)
                //            UserProfile()
                
            }
            
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing:
                                    Button{
                presentationMode.wrappedValue
                    .dismiss()
            }label: {
                Image(systemName:"x.circle.fill")
            })
                             
        }
        
    }
}
struct CustomerProfile_Previews: PreviewProvider {
    static var previews: some View {
        CustomerProfile()
    }
}
