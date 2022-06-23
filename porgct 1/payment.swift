//
//  payment.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//


import SwiftUI

struct payment: View {
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    var body: some View {
        ZStack{
        Rectangle()
                .foregroundColor(backgroundcolor)
        .frame(width: 360, height: 850)
            VStack{
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
                .frame(width:330 , height: 550 )
                .cornerRadius(8)
                .foregroundColor(.white)
            
         
              
            VStack{
            HStack{
                Image(systemName:"stopwatch")
                    .renderingMode(.template)
                    .foregroundColor(Color("orange1"))
                Text("IN PROGRESS")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(Color("orange1"))
                Spacer()
                Text("Fri, June, 2022 8:00 PM")
                    .font(.footnote)
                    .fontWeight(.regular)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.611))
                
            }.padding(22)
               Divider()
                VStack{
                Text("Order Number : 237")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color3"))
                    .padding(.trailing,108)
                    .padding()
                HStack(spacing:200){
                Text("Note :")
                    .fontWeight(.bold)
                    .foregroundColor(Color("orange1"))
                    Image(systemName:"square.and.pencil")                }
                Text("My order needs care because it is \n breakable.")
                    .font(.footnote)
                    .fontWeight(.medium)
                    .padding(.trailing,55)
                }
               Text("Your Receipt")
                    .underline()
                    .foregroundColor(Color("orange1"))
                ZStack{
                    Rectangle()
                        .foregroundColor(Color("gray1"))
                        .frame(width: 300, height: 65)
                        .cornerRadius(10)
                    VStack{
                        Image("Image1-1")
                        .resizable()
                        .frame(width:250 , height: 30 )
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
                Text("Summary")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("Color3"))
                    .padding(.trailing,200)
                HStack(spacing:200){
                    VStack{
                    
                    Text("Size of Shipment")
                           .font(.footnote)
                           .foregroundColor(Color("Color3"))
                        Text("Driver Offer")
                            .font(.footnote)
                            .foregroundColor(Color("Color3"))
                        Text("Insurance")
                            .font(.footnote)
                            .foregroundColor(Color("Color3"))
                }
                    VStack{
                        Text("50")
                            .font(.footnote)
                            .foregroundColor(Color("Color3"))
                        Text("100")
                            .font(.footnote)
                            .foregroundColor(Color("Color3"))
                            Text("30")
                                .font(.footnote)
                                .foregroundColor(Color("Color3"))
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
                    Rectangle()
                        .foregroundColor(Color("gray1"))
                        .frame(width: 55, height: 50)
                        .cornerRadius(10)
                        
                }
               
                }
                }
                Button(action: {}, label: {
                    Text("Confirm")
                        .font(.title3)
                        .foregroundColor(Color.white)

                })
                    .frame(width: 300, height:35)
                    .background(Color("Color3"))
                        .cornerRadius(5)
                        .offset(y:50)

            }
                               
}
        
}
  
}

struct payment_Previews: PreviewProvider {
    static var previews: some View {
        payment()
    }
}
