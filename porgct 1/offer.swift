//
//  offer.swift
//  porgct 1
//
//  Created by lama aljebreen on 06/11/1443 AH.
//

import SwiftUI


struct offer: View {
    
   
    @State var Sarah3: Bool = false

    
    var body: some View {
        ZStack{
            ZStack{
                Color("Color3")
                    .ignoresSafeArea()
            }
           
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 670)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .offset(y:48)
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
                        ZStack{
                            Rectangle()
                                .frame(width: 325, height:140)
                                .foregroundColor(.white)
                                .cornerRadius(15)
                            VStack(spacing:15){
                                ZStack{
                                    Rectangle()
                                        .frame(width: 310, height:30)
                                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.955))
                                        .cornerRadius(10)
                                    Text("""
This captain gives you an offer (100 SR)
for your order ?
""")
                                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                                    .foregroundColor(.black)
                                }
                                HStack(spacing:30){
                                    HStack{
                                        Image("Driver")
                                            .resizable()
                                            .frame(width: 50, height: 50)
                                            .clipShape(Circle())
                                        VStack{
                                            HStack{
                                                Image("Image11")
                                                Text("Your captain")
                                                    .font(.system(size: 10, weight:.bold, design: .default))
                                                    .foregroundColor(Color("Color3"))
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color.orange)
                                                    .frame(width:10.0 , height: 22)
                                                    .font(.system(size: 12, weight: .bold, design: .default))
                                                Text("4.9")
                                                    .font(.caption)
                                                    .fontWeight(.medium)
                                            }
                                            Text("Omar Saleh ")
                                                .font(.system(size: 11, weight:.bold, design: .default))
                                                .offset(x:-10)
                                            
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
                                }
                                HStack(spacing:10){
                                    NavigationLink(isActive: $Sarah3, destination: {
                                        after_payment()
                                    }, label: {
                                        
                                    })
                                    Button(action: {
                                        Sarah3.toggle()
                                    }, label: {
                                        Text("Accept")
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                        
                                    })
                                    .frame(width: 140, height:26)
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
                                    .frame(width: 140, height:26)
                                    .background(.red)
                                    .cornerRadius(5)
                                    
                                    
                                    
                                }
                            }
                        }
                        
                        //                        .padding(200)
                    }
                    
                }
                
            }
    
        
    }
    
}



struct offer_Previews: PreviewProvider {
    static var previews: some View {
        offer()
    }
}
