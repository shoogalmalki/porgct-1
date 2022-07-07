//
//  payment.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//


import SwiftUI

struct payment: View {
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    @State var shouldGoToWhatEverPage77: Bool = false
    @State var showRectangle: Bool = false
    var body: some View {
        ZStack{
            Color("Color1")
//
                .ignoresSafeArea()
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
                .frame(width:350 , height: 450 )
                .cornerRadius(8)
                .foregroundColor(.white)
            
                    VStack(spacing:22){
                HStack{
                Image(systemName:"stopwatch")
                    .renderingMode(.template)
                    .foregroundColor(Color("orange1"))
                
                    HStack(spacing:44){
                    Text("IN PROGRESS")
                        .font(.callout)
                        .fontWeight(.bold)
                        .foregroundColor(Color("orange1"))
                Text("Fri, June, 2022 8:00 PM")
                    .font(.footnote)
                    .fontWeight(.regular)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.611))
                
            }
            }
               Divider()
                    .frame(width: 330)
//                VStack{
                       
                Text("Order Number : 237")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color3"))
                    .offset(x:-55)
                        VStack{
                Text("Note :")
          .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(Color("orange1"))
                .offset(x:-130)

                        HStack(spacing:55){
//                    Image(systemName:"square.and.pencil")
                Text("My order needs care because it is \n breakable.")
                    
             .font(.system(size: 15, weight: .semibold, design: .rounded))
                Image(systemName:"square.and.pencil")
//                    .padding(.trailing,55)
                        }
                }
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
                }
                NavigationLink(){
                    after_payment()
                } label: {
                    Text("Done")
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 50)
                        .background(Color(UIColor.systemMint))
                         .cornerRadius(10)
                }
            
            }
        }
}
        
}
  


struct payment_Previews: PreviewProvider {
    static var previews: some View {
        payment()
    }
}
