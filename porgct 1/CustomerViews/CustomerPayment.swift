//
//  payment.order.swift
//  Habhoob
//
//  Created by sarah hemood  on 17/12/1443 AH.
//

import SwiftUI

struct CustomerPayment: View {
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var showRectangle: Bool = false
    let commonTopPadding = 100.0
    let commonWidth = 0.90
    @State var Sarah3:Bool = false
    
    
    var body: some View {
        ZStack{
            ZStack
            {
                Color(.systemMint)
                    .ignoresSafeArea()
            }
            GeometryReader { geometry in
                VStack(spacing:44){
                    HStack{
                        ZStack{
                            Image(systemName:"shippingbox")
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.gray.opacity(0.2))
                            Image(systemName:"shippingbox")
                        }
                        Image("Image12")
                        
                        ZStack{
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.gray.opacity(0.2))
                            Image(systemName:"person.text.rectangle")
                        }
                        Image("Image12")
                        ZStack{
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.mint)
                            Image(systemName:"doc.on.doc")
                            
                        }
                    }
                    ZStack{
                        Rectangle()
                            .frame(width:geometry.size.width * commonWidth , height: 450 )
                            .cornerRadius(8)
                            .foregroundColor(.white)
                        
                        VStack(spacing:22){
//                            VStack(alignment: .leading){
                            HStack{
                                
                                Image(systemName:"stopwatch")
                                        .renderingMode(.template)
                                        .foregroundColor(Color("orange1"))
                                        .frame(width: 15, height: 30)
                                Text("IN PROGRESS")
                                    .font(.callout)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("orange1"))
                                    .lineLimit(1)
                                    .frame(width: 110, height: 20)
                                Text("Fri, June, 2022 8:00 PM")
                                    .font(.footnote)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.611))
                                Spacer()
                                    
                                }.frame(maxWidth:.infinity)
                                .padding([.leading,.trailing], 15)
//                            }
                            Divider()
                                .frame(width: 330)
                            //                VStack{
                            HStack{
                                Text("Order Number : 237")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("Color3"))
                                Spacer()
                            }.padding([.leading,.trailing], 15)
                            
                                
                            VStack(alignment: .leading){
                                Text("Note :")
                                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                                    .foregroundColor(Color("orange1"))
                                   
                                
                                HStack(spacing:15){
                                    
                                    Text("My order needs care because it is \n breakable.")
                                    
                                        .font(.system(size: 15, weight: .semibold, design: .rounded))
                                    Spacer()
                                    Image(systemName:"square.and.pencil")
                                    //                    .padding(.trailing,55)
                                    
                                }
                            }.padding([.leading,.trailing], 15)
                            Text("Your Receipt")
                                .underline()
                                .font(.system(size: 17, weight: .bold, design: .rounded))
                                .foregroundColor(Color("orange1"))
                            ZStack{
                                Rectangle()
                                    .foregroundColor(Color("gray1"))
                                    .frame(width: 300, height: 65)
                                    .cornerRadius(10)
                                VStack{
                                    Image("Image1-1")
                                    //                        .resizable()
                                    //                        .frame(width:250 , height: 30 )
                                    HStack(spacing:170){
                                        Text("Riyadh")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                        Text("Dammam")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                    }
                                }
                            }
                            
                            HStack(spacing:150){
                                Text("Total :")
                                    .fontWeight(.black)
                                    .foregroundColor(Color("Color3"))
                                Text("89.64 SR")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("orange1"))
                                
                            }
                            HStack(spacing:33){
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color("gray1"))
                                        .frame(width: 55, height: 50)
                                        .cornerRadius(10)
                                    Image("Image22")
                                }
                                ZStack{
                                    Rectangle()
                                        .foregroundColor(Color("gray1"))
                                        .frame(width: 55, height: 50)
                                        .cornerRadius(10)
                                    Image("Image33")
                                }
                                if showRectangle == true {
                                    
                                    Button.init(action: {
                                        showRectangle.toggle()
                                        
                                    }, label: {
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.gray)
                                                .frame(width: 55, height: 50)
                                                .cornerRadius(13)
                                            
                                            Text("Cash")
                                                .font(.caption2)
                                                .foregroundColor(.black)
                                            
                                            
                                        }
                                    })
                                }
                                else{
                                    Button.init(action: {
                                        showRectangle.toggle()
                                        
                                    }, label: {
                                        ZStack{
                                            
                                            Rectangle()
                                                .foregroundColor(Color("gray1"))
                                                .frame(width: 55, height: 50)
                                                .cornerRadius(13)
                                            
                                            Text("Cash")
                                                .font(.caption2)
                                                .foregroundStyle(.black)
                                                .font(.system(size: 20, weight: .bold, design: .default))
                                            
                                            
                                        }
                                    })
                                }
                                //
                            }
                            //
                        }
                    }.frame(width: geometry.size.width * 0.85)
                Button(action: {
                    switch appEnvironmentType{
                    case .development:
                        Sarah3 = true
                        break
                    case .staging:
                        handleAction()
                        break
                    case .production:
                        break
                    }
                    
                }, label: {
                    Text("Done")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 50)
                        .background(Color(UIColor.systemMint))
                        .cornerRadius(10)
                    
                })
                NavigationLink(isActive: $Sarah3, destination: {
                    CustomerPaymentComplete()
                }, label: {
                    
                })
                
                
                }
                .frame(maxWidth: UIScreen.main
                    .bounds.size.width , maxHeight: geometry.size.height)
                
                
            }.background(Color("Color1")
                .cornerRadius(20))
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            .frame(maxWidth: UIScreen.main
                .bounds.size.width , maxHeight: .infinity)
            .padding(.top,commonTopPadding)
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(false)
//        .edgesIgnoringSafeArea(.bottom)
        .navigationBarItems(leading:
            Button(action: {
                self.mode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "arrow.left")
                        .imageScale(.large)
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.white)
                }
        })
    }
    private func handleAction() {
//        KRProgressHUD.show(withMessage: "Please Wait...")
//        AuthViewModel().loginUser(email: Email, password: password){userModel,error in
//            KRProgressHUD.dismiss()
//            if error == nil{
//                print("userId===",userModel?.userId ?? "Nothing")
//                print("userName===",userModel?.fullName ?? "Nothing")
//                shouldGoToWhatEverPage3.toggle()
//            }else{
//                print("error===",error?.localizedDescription ??  "Error Occured")
//                errorString = error?.localizedDescription ?? "Error Occured"
//                showAlert = true
//            }
//        }
    }
}

struct CustomerPayment_order_Previews: PreviewProvider {
    static var previews: some View {
        CustomerPayment()
    }
}