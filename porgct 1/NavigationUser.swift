//
//  NavigationUser.swift
//  porgct 1
//
//  Created by sarah hemood  on 20/11/1443 AH.
//

import SwiftUI
import Foundation
extension View {
    func cornerRadius54(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner54(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedCorner54: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
struct NavigationUser: View {
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
                .cornerRadius54 (topLeft, corners: .topLeft)
        .cornerRadius54 (topRight, corners: .topRight)
        .cornerRadius54 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius54 (bottomRight, corners: .bottomRight)
            
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
                ZStack{
                    VStack(spacing:20){
                        HStack{
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color("Color3"))
                            Image("Image12")
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("Color3"))
                            Image("Image12")
                            RoundedRectangle (cornerRadius: 10)
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color("Color3"))
                        }
                    ZStack{
        Rectangle()
            .frame(width: 325, height:140)
            .foregroundColor(.white)
            .cornerRadius(15)
                        VStack(spacing:15){
                        ZStack{
                        Rectangle()
   .frame(width: 310, height:20)
     .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.955))
       .cornerRadius(10)
      Text("This captain gives you an offer (100 SR) for your order number 7778887")
                                .font(.system(size: 8.5, weight: .regular, design: .rounded))
                                .foregroundColor(.orange)
                        }
                            HStack(spacing:30){
                            HStack{
                            Image("Image3-1")
                                .resizable()
                                .frame(width: 50, height: 50)
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
                                Text("Abdulmalik Qasim ")
                                    .font(.system(size: 11, weight:.bold, design: .default))
                                    .offset(x:-11)
                                   
                                }
                            }
                                HStack{
                                    ZStack{
                                Circle()
                                            .frame(width:40, height: 36)
                                    .foregroundColor(Color("Color4"))
                                        Image(systemName:"phone")
                                                .foregroundColor(Color("Color3"))
                                                .font(.system(size: 12, weight:.bold, design: .default))                        }
                                    ZStack{
                                    Circle()
                                            .frame(width:40, height:36 )
                                        .foregroundColor(Color("Color4"))
                                    Image("Image10")
                                        .resizable()
                                        .frame(width: 17, height: 17)
                                        
                                    }
                            }
                            }
                            HStack{
                       Button(action: {}, label: {
                                                         Text("Accept")
                                                             .font(.callout)
                                  .fontWeight(.semibold)
                                                             .foregroundColor(Color.white)

                                                     })
                                                         .frame(width: 135, height:26)
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
                                                         .frame(width: 135, height:26)
                                                         .background(.red)
                                                                 .cornerRadius(5)
                                                                 

                                                         
                                                     }
                    }
    }
}
            }
            }
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            .ignoresSafeArea()
                .navigationBarHidden(true)
               
        }
    }
}
struct NavigationUser_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUser()
    }
}

