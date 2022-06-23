//
//  Home.User.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI

struct Home_User: View {
    var frameworks = ["Pick Up Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    var frameworks2 = ["Drop Of Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    @State private var selectedFrameworkIndex = ""
    var body: some View {
        ZStack{
        ZStack{
            Color("Color3")
                .ignoresSafeArea()
            HStack{
                HStack(spacing:200){
                    
                    Button(action: {
                    }
                           , label:{
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 23))
                        
                    })
                    Button(action: {
                    }
                           , label:{
                        Image(systemName: "bell.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 23))
                    })
                }
                Button(action: {
                }
                       , label:{
                    Image(systemName: "bell.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 23))
                    
                })
            } .padding(.bottom,630)
        }
            ZStack{
            Rectangle()
                .frame(width: 380, height: 650)
                .foregroundColor(Color("Color1"))
                .cornerRadius(20)
                .offset(y:58)
                VStack{
                    ZStack{
                        Image("Image4-1")
                            .resizable()
                            .foregroundColor(Color("Color2"))
                            .frame(width:35, height:42)
                            .offset(x:-110)
                        
                        
                        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                            ForEach(0 ..< frameworks.count) {
                                Text(self.frameworks[$0])
                            }
                            
                        }
                        
                        
                        .font(.title)
                        
                        
                        
                        .offset(x:-35,y:-11)
                        Divider()
                            .frame(width: 200)
                        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                            ForEach(0 ..< frameworks2.count) {
                                Text(self.frameworks2[$0])
                            }
                            
                        }
                        
                        .offset(x:-33,y:15)
                        .overlay{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color2"),lineWidth: 1)
                                .frame(width: 300, height: 60)
                                .offset(y:-3)
                            
                        }
                    }
                }
            }
        }
    }
}

struct Home_User_Previews: PreviewProvider {
    static var previews: some View {
        Home_User()
    }
}
