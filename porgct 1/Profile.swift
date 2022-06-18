//
//  Profile.swift
//  porgct 1
//
//  Created by shoog almalki on 19/11/1443 AH.
//

import SwiftUI
import Foundation
extension View {
    func cornerRadius60(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
    }
}
struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct Profile : View {
    
    

    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    var body: some View {
        
        
        ZStack{

            Rectangle ()
                .cornerRadius60 (topLeft, corners: .topLeft)
        .cornerRadius60 (topRight, corners: .topRight)
        .cornerRadius60 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius60 (bottomRight, corners: .bottomRight)
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
            
         .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            VStack{
       
                HStack{
                    Image(systemName: "Image2")
                        .resizable()
                        .frame(width: 93, height: 30)
                        .foregroundColor(Color("white"))
                }
                VStack(alignment: .leading){
                    Text("Stefani Wong")
                        .lineLimit(nil)
                        .font(.custom("Stefani Wong", size: 19))
                        .foregroundColor(Color("white"))
                        .padding(.trailing, 31.0)
                        .padding(.bottom,-4)
                        .padding(.top,-6)
    }
                
            .offset(x: 0, y: -230)
           
        }
        .offset(x: 0, y: -40)

        
    }

        ZStack{
        Image("Image2-1")
            .resizable()
            .frame(width: 57, height:55)
            .offset(x:118)
            .offset(y:-2)
            Rectangle()
                .frame(width: 33, height:15)
                .cornerRadius(5)
                .offset(x:120)
                .offset(y:17)
                .foregroundColor(Color("Color1"))
            HStack{
            Text("4.9")
                .font(.caption)
                .fontWeight(.medium)
                .offset(x:135)
                .offset(y:17)
                Image(systemName: "star.fill")
                    .foregroundColor(Color.orange)
                    .frame(width:10.0 , height: 22)
                    .offset(x:95)
                    .offset(y:17)
        }
            Text("OMER SALEH")
                .font(.footnote)
                .offset(y:38)
                .offset(x:110)


        }

        VStack{
            Text("Account")
                .font(.footnote)
                .offset(x:50)
                .offset(y:212)
            Image(systemName: "Image-1")
            Text("All orders")
                .font(.footnote)
                .offset(x:80)
                .offset(y:252)
            Image(systemName: "Image-2")
            Text("Service Reviews")
                .font(.footnote)
                .offset(x:80)
                .offset(y:252)
            Image(systemName: "Image-3")
            Text("Coupons")
                .font(.footnote)
                .offset(x:80)
                .offset(y:252)
            Image(systemName: "Image-4")
            Text("Contact us")
                .font(.footnote)
                .offset(x:80)
                .offset(y:252)
        }
        VStack{
            Text("Other")
                .font(.footnote)
                .offset(x:50)
                .offset(y:212)
            Text("Dark mode")
                .font(.footnote)
                .offset(x:80)
                .offset(y:252)
            Image(systemName: "Image-5")
            Text("Language")
                .font(.footnote)
                .offset(x:80)
                .offset(y:252)
            Image(systemName: "Image-6")
            
        }
        HStack{
           Text("Driver Mood")
                .font(.footnote)
                .offset(x:24)
                .offset(y:98)
            Image(systemName: "Image-7")
        }

    }
        
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
        }
