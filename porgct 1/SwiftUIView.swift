//
//  ContentView.swift
//  background h
//
//  Created by May AlQusayer on 01/11/1443 AH.
//


import SwiftUI
import Foundation
extension View {
    func cornerRadius1(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner1(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
    }
}
struct RoundedCorner1: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct ContentView1: View {
    
    

    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    var body: some View {
        
        
        ZStack{

            Rectangle ()
                .cornerRadius1(topLeft, corners: .topLeft)
        .cornerRadius1 (topRight, corners: .topRight)
        .cornerRadius1 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius1 (bottomRight, corners: .bottomRight)
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
            
         .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            VStack{
        HStack{
      
            ZStack{
                RoundedRectangle (cornerRadius: 10)
                .foregroundColor(Color(UIColor.systemMint))
  .frame(width: 40, height: 40)
                Image ("Order")
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(UIColor.systemMint))
             

            }

                
            
            Image ("Line 1-")
                .frame(width: 20, height: 40)
            ZStack{
            RoundedRectangle (cornerRadius: 10)
                    .foregroundColor(Color(UIColor.lightGray))
                .frame(width: 40, height: 40)
                Image ("Offers")
                    .frame(width: 30, height: 30)
            }
            .padding(30.0)
            Image ("Line 1-")
                .frame(width: 20, height: 40)
            ZStack{
                RoundedRectangle (cornerRadius: 10)
                    .foregroundColor(Color(UIColor.lightGray))
                .frame(width: 40, height: 40)
                Image ("Payment")
                    .frame(width: 30, height: 30)
    }
            
        }
                HStack{

                              Text ("Order")
                    .font(.body)
                .multilineTextAlignment(.leading)
                .lineLimit(nil)
                .padding(.leading)
                .padding(.trailing,50.0)

                    Text ("Offers")
                        .font(.body)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                    .padding(.trailing,00.0)
                    .padding(.trailing,50.0)

                    Text ("Payment")
                        .font(.body)
                    .multilineTextAlignment(.leading)
                    .lineLimit(nil)
                }
                .offset(x: 0, y: -40)
    }
            .offset(x: 0, y: -230)
           
        }
        .offset(x: 0, y: -40)

        
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
}

