//
//  profile.user.swift
//  porgct 1
//
//  Created by sarah hemood  on 19/11/1443 AH.
//


import SwiftUI

struct profile: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 370, height:800)
                .foregroundColor(Color("Color1"))
                .cornerRadius(15)
            VStack(spacing:40){
//                HStack(alignment: .center,spacing: -66){
                ZStack{
                Rectangle()
                    .frame(width:30, height:30)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.875))
                    .cornerRadius(10)
                    Image(systemName: "chevron.left")
                        .foregroundColor(Color("Color3"))
                } .padding(.trailing,270)
//                    Text("Profile")
//                    .font(.system(size: 15, weight:.bold, design: .default))
//                }

        HStack(spacing:100){
        HStack{
        Image("Image3-1")
            .resizable()
            .frame(width: 50, height: 50)
            VStack{
        HStack{
         Text("sarui madlin")
                .font(.system(size: 15, weight:.bold, design: .default))
                .foregroundColor(Color("Color3"))
            Image(systemName: "star.fill")
                .foregroundColor(Color.orange)
                .frame(width:10.0 , height: 22)
                .font(.system(size: 12, weight: .bold, design: .default))
            Text("4.9")
                .font(.caption)
                .fontWeight(.medium)
        }
            Text("Balance :300 SAR")
                    .font(.system(size: 13, weight:.regular, design: .default))

            }
        }
            Image(systemName: "square.and.pencil")
                .foregroundColor(Color("Color3"))
                .font(.system(size: 16, weight:.bold, design: .default))

        }
       
                ZStack{
                Rectangle()
                    .frame(width: 300, height:180)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    VStack(alignment:.leading, spacing: 19){
                        Text("Account")
                            .font(.system(size: 15, weight:.bold, design: .default))
                        HStack(spacing:170){
                        HStack{
                    Image(systemName: "person")
                        .foregroundColor(Color("Color3"))
                        Text("My Orders")
                            .font(.system(size: 14, weight: .regular, design: .default))
                        }
                        Image(systemName: "chevron.right")
                      
                        }
                        HStack(spacing:170){
                        HStack{
                    Image(systemName: "equal.square")
                        .foregroundColor(Color("Color3"))
                        Text("Feedback")
                            .font(.system(size: 14, weight: .regular, design: .default))
                        }
                        Image(systemName: "chevron.right")
                      
                        }
                        HStack(spacing:170){
                        HStack{
                    Image("Image1-2")
                        .foregroundColor(Color("Color3"))
                        Text("Coupons")
                            .font(.system(size: 14, weight: .regular, design: .default))
                        }
                        Image(systemName: "chevron.right")
                      
                        }
                        HStack(spacing:170){
                        HStack{
                    Image("Image2-2")
                        .foregroundColor(Color("Color2"))
                        Text("Contact us")
                            .font(.system(size: 13, weight: .regular, design: .default))
                        }
                        Image(systemName: "chevron.right")
                      
                        }
                    }
                    
                }
                ZStack{
                Rectangle()
                    .frame(width: 300, height:150)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    VStack(alignment:.leading, spacing: 19){
                        Text("Other")
                            .font(.system(size: 15, weight:.bold, design: .default))
                        HStack(spacing:170){
                        HStack{
                    Image(systemName: "moon")
                        .foregroundColor(Color("Color3"))
                        Text("Dark mode")
                            .font(.system(size: 14, weight: .regular, design: .default))
                        }
                        Image(systemName: "chevron.right")
                      
                        }
                        HStack(spacing:170){
                        HStack{
                    Image( "Image4-2")
                        .foregroundColor(Color("Color2"))
                        Text("Language")
                            .font(.system(size: 14, weight: .regular, design: .default))
                        }
                        Image(systemName: "chevron.right")
                      
                        }
                      
                    }
                    
                }
                
                        ZStack{
                        Rectangle()
                            .frame(width: 300, height:100)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                           
                        

                                Toggle(isOn: $toggleIsOn,
                                       label:{
                                    Text("Driver Mood")
                                        .font(.system(size: 16, weight: .bold, design: .default))
                                })
                                .toggleStyle(SwitchToggleStyle(tint: Color("Color3")))
                                    
                                .padding(50)
                                
                        
                            
                        }
                
                
                
                
    }
}
}
}
struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
