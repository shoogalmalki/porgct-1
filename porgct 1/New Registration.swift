//
//  New Registration.swift
//  porgct 1
//
//  Created by lama aljebreen on 02/11/1443 AH.
//

import SwiftUI
import Foundation

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }

struct New_Registration: View {
    
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)

    @State private var FullName = ""
    @State private var Email = ""
    @State private var PhoneNumber = ""
    @State private var password = ""
    
    
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
                    .offset(x: 0, y: 130)
                
                VStack {
                    Text("New Registration")
                        .bold()
                        .offset(x: -1, y:-70 )
                    
        TextField("Full Name", text: $FullName)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        .offset( y:-70 )
                    
            TextField("Phone Number", text: $PhoneNumber)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        .offset( y:-70 )
                        
        TextField("Email", text: $Email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.white)
                    .cornerRadius(10)
         
            .offset( y:-70 )
                    
                    
        SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        .offset( y:-70 )
                    
                    
                    Button("Registration") {
                        
                        }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color(UIColor.systemMint))
                    .cornerRadius(10)
                    .offset(y:-60 )
                    
                   
                    }
                }
                
                
     }.background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            .ignoresSafeArea()
            .navigationBarHidden(true)
        
}
    }
  
    

    


struct New_Registration_Previews: PreviewProvider {
    static var previews: some View {
        New_Registration()
    }
}
