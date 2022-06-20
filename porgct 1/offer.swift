//
//  offer.swift
//  porgct 1
//
//  Created by lama aljebreen on 06/11/1443 AH.
//

import SwiftUI
import Foundation
//green and gray
extension View {
    func cornerRadius22(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner22(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedCorner22: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
}


struct offer: View {
    
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)


    var body: some View {
        NavigationView {
            ZStack {
            Rectangle ()
                .cornerRadius22 (topLeft, corners: .topLeft)
        .cornerRadius22 (topRight, corners: .topRight)
        .cornerRadius22 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius22 (bottomRight, corners: .bottomRight)
            
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
                ZStack{
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
                        .offset(y:-170)
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
                       Button(action: {}, label: {
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
                        .offset(y:-150)
//                        .padding(200)
}
                  
            }
                
            }
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            .ignoresSafeArea()
                .navigationBarHidden(true)
               
        }
    }
    
}
  


struct offer_Previews: PreviewProvider {
    static var previews: some View {
        offer()
    }
}
