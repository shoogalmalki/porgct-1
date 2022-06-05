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
    func cornerRadius2(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedCorner2: Shape {

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
                .cornerRadius (topLeft, corners: .topLeft)
        .cornerRadius (topRight, corners: .topRight)
        .cornerRadius (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius (bottomRight, corners: .bottomRight)
            
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 120)
    VStack{

                VStack(spacing:20){
                    ZStack{
                Rectangle()
                    .frame(width: 325, height:170)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .offset( y:-140)
                    VStack{
                  
                    HStack(spacing:190){
            Text("""
Omer Saleh offer 100 SAR
for your shipment?
""")
                            .font(.callout)
                            .fontWeight(.semibold)
                            .offset(y:-170)
                            .offset(x:-50)
                        
                    }
                        
                        
                        HStack{
                            Image(systemName: "calendar.badge.clock")
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                .offset(x:-70)
                                .offset(y:-130)
                            Text("Fri, June 3(8 -11AM)")
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                .font(.caption)
                                .offset(x:-70)
                                .offset(y:-130)
                            
                        }
                        HStack{
                        Button(action: {}, label: {
                            Text("Accept")
                                .font(.callout)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)

                        })
                            .frame(width: 150, height:25)
                            .background(.green)
                                .cornerRadius(5)
                                .offset(y:-110)
                            
                Button(action: {}, label: {
                                Text("Decline")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)

                            })
                                .frame(width: 150, height:25)
                                .background(.red)
                                    .cornerRadius(5)
                                    .offset(y:-110)
                        }
        }
                    ZStack{
                    Image("Driver")
                        .resizable()
                        .frame(width: 60, height:100)
                        .offset(x:118)
                        .offset(y:-170)
                        Rectangle()
                            .frame(width: 33, height:15)
                            .cornerRadius(5)
                            .offset(x:10)
                            .offset(y:-100)
                            .foregroundColor(Color("Color1"))
                        HStack{
                        Text("4.9")
                            .font(.caption)
                            .fontWeight(.medium)
                            .offset(x:135)
                            .offset(y:-130)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.orange)
                                .frame(width:10.0 , height: 22)
                                .offset(x:95)
                                .offset(y:-130)
                    }
                        Text("OMER SALEH")
                            .font(.footnote)
                            .offset(y:-110)
                            .offset(x:120)


                    }
        }

                
                
            }

                             }
          }
            //green and gray
            
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
