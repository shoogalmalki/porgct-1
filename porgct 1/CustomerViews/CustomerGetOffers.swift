//
//  offer.swift
//  porgct 1
//
//  Created by lama aljebreen on 06/11/1443 AH.
//

import SwiftUI
import KRProgressHUD

struct CustomerGetOffers: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @State var Sarah3: Bool = false
//    @State var driversOfferList:[User] = []
    let commonTopPadding = 100.0
    let driversOfferList:[Item] = [
//        .init(userId: "1", fullName: "Akshay1"),
//        .init(userId: "2",fullName: "Akshay2"),
//        .init(userId: "3",fullName: "Akshay3"),
//        .init(userId: "4",fullName: "Akshay4"),
//        .init(userId: "5",fullName: "Akshay5")
        .init(fullName: "Omer Salah"),
        .init(fullName: "Lama Ajibren"),
        .init(fullName: "Sarah Hemood"),
        .init(fullName: "Lama Mohammad"),
        .init(fullName: "Sarah Alsauidi")
    ]
    var body: some View {
//        NavigationView
//        {
            ZStack{
                    ZStack{
                        Color(.systemMint)
                            .ignoresSafeArea()
                    }
               
                    GeometryReader { geometry in
//
                        VStack(spacing:20){
                            HStack{
                                ZStack{
                                }
                                ZStack{
                                    Image(systemName:"shippingbox")
                                    
                                    RoundedRectangle (cornerRadius: 10)
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(Color.gray.opacity(0.2))
                                    
                                }
                                
                                Image("Image12")
                                ZStack{
                                    
                                    RoundedRectangle (cornerRadius: 10)
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(Color.mint)
                                    Image(systemName:"person.text.rectangle")
                                }
                                Image("Image12")
                                ZStack{
                                    Image(systemName:"doc.on.doc")
                                    RoundedRectangle (cornerRadius: 10)
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(Color.gray.opacity(0.2))
                                }
                                
                            }
                            ScrollView(.vertical,showsIndicators: false)
                            {
                                ForEach(self.driversOfferList.indices, id: \.self) { index in
//                                    self.$driversOfferList[index].offerAmount
                                    ZStack{
                                    
                                        Rectangle()
                                            .frame(width: geometry.size.width * 0.84, height:170)
                                            .foregroundColor(.white)
                                            .cornerRadius(15)
                                        
                                        VStack(spacing:15){
//                                            VStack{
//                                                Rectangle()
//                                                    .frame(width: geometry.size.width * 0.92, height:30)
//                                                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.90))
//                                                    .cornerRadius(10)
//                                                    .padding(.init(top: -10, leading: 0, bottom: 0, trailing: 0))
                                            Text("This captain gives you an offer (100 SR) for your order?")
                                                .font(.system(size: 14, weight: .semibold, design: .rounded))
                                                .foregroundColor(.black)
                                                .lineLimit(2)
                                                .frame(width:geometry.size.width * 0.78)
//                                            }
                                            
                                            HStack(spacing:10){
                                                HStack{
                                                    Image("Driver")
                                                        .resizable()
                                                        .frame(width: 50, height: 50)
                                                        .clipShape(Circle())
                                                    VStack(alignment: .leading){
                                                        HStack{
                                                            Image("Image11")
                                                            Text("Your captain")
                                                                .font(.system(size: 9, weight:.bold, design: .default))
                                                                .foregroundColor(Color("Color3"))
                                                                .frame(width: 60, height:20)
                                                            Image(systemName: "star.fill")
                                                            
                                                                .foregroundColor(Color.orange)
                                                                .frame(width:10.0 , height: 22)
                                                                .font(.system(size: 12, weight: .bold, design: .default))
                                                            Text("4.9")
                                                                .font(.caption)
                                                                .fontWeight(.medium)
                                                        }
                                                        Text(self.driversOfferList[index].fullName)
                                                            .font(.system(size: 11, weight:.bold, design: .default))
                                                        
                                                    }
                                                }
                                                
                                                HStack{
                                                    ZStack{
                                                        Circle()
                                                            .frame(width:40, height: 36)
                                                            .foregroundColor(Color.mint.opacity(0.2))
                                                        Image(systemName:"phone")
                                                            .foregroundColor(Color("Color3"))
                                                        .font(.system(size: 12, weight:.bold, design: .default))                        }
                                                    ZStack{
                                                        Circle()
                                                            .frame(width:40, height:36 )
                                                            .foregroundColor(Color.mint.opacity(0.2))
                                                        Image("Image10")
                                                            .resizable()
                                                            .frame(width: 17, height: 17)
                                                        
                                                    }
                                                }
                                                
                                            }.frame(width: geometry.size.width * 0.80)
                                            HStack(spacing:10){
                                                NavigationLink(isActive: $Sarah3, destination: {
                                                    CustomerPayment()
                                                }, label: {
                                                    
                                                })
                                                Button(action: {
                                                    switch appEnvironmentType{
                                                    case .development:
                                                        Sarah3 = true
                                                        break
                                                    case .staging:
                                                        handleAction()
                                                        break
                                                    case .production:
                                                        handleAction()
                                                        break
                                                    }
                                                    
                                                }, label: {
                                                    Text("Accept")
                                                        .font(.callout)
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(Color.white)
                                                    
                                                })
                                                .frame(width: geometry.size.width / 3, height:26)
                                                .background(.green)
                                                .cornerRadius(5)
                                                Rectangle()
                                                    .frame(width:2, height:26)
                                                //                                Divider()
                                                //                                    .background(Color.black)
                                                    .foregroundColor(.black)
                                                    .opacity(0.8)
                                                //                                    .frame(height: 22)
                                                
                                                Button(action: {}, label: {
                                                    Text("Decline")
                                                        .font(.callout)
                                                        .fontWeight(.semibold)
                                                        .foregroundColor(Color.white)
                                                    
                                                })
                                                .frame(width: geometry.size.width / 3, height:26)
                                                .background(.red)
                                                .cornerRadius(5)
                                            }

                                        }
                                    }
                                    .padding(.top, 10)
                                    Spacer()
                                }


                            }
                            
                            //                        .padding(200)
                        }
                        
                        .frame(maxWidth: UIScreen.main
                            .bounds.size.width , maxHeight: geometry.size.height * 0.90)
                        .padding(.top,20)
                        
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



struct CustomerGetOffers_Previews: PreviewProvider {
    static var previews: some View {
        CustomerGetOffers()
    }
}
