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
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ZStack{
                Color("Color1")
                    .ignoresSafeArea()
                VStack(spacing:60){
          
                    HStack(spacing:100){
                        HStack{
                            Image("Driver")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            VStack{
                                HStack{
                                    Text("Omar saleh")
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
                            .frame(width: 300, height:170)
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
                                }
                                Image(systemName: "chevron.right")
                            }
                            
                            HStack(spacing:174){
                                HStack{
                                    Image("Image1-2")
                                        .foregroundColor(Color("Color3"))
                                    Text("Coupons")
                                        .font(.system(size: 15, weight: .regular, design: .default))
                                }
                                Image(systemName: "chevron.right")
                                
                            }
                            HStack(spacing:165){
                                HStack{
                                    Image("Image2-2")
                                        .foregroundColor(Color("Color2"))
                                    Text("Contact us")
                                        .font(.system(size: 14, weight: .regular, design: .default))
                                }
                                Image(systemName: "chevron.right")
                                
                            }
                        }
                        
                    }
                    ZStack{
                        Rectangle()
                            .frame(width: 300, height:110)
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
                                }
                                Image(systemName: "chevron.right")
                                
                            }
                            
                        }
                        
                    }
                    
                    Button("Sign out") {
                    try? Auth.auth().signOut()
                       presentationMode.wrappedValue.dismiss()
                    }
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .semibold, design: .serif))
                    .frame(width: 300, height: 50)
                     .background(Color(UIColor.systemMint))
                    .cornerRadius(10)
                }.padding(.bottom,80)
                //            UserProfile()
                
            }
            
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading:
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
