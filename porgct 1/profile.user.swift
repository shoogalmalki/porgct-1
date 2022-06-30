//
//  profile.user.swift
//  porgct 1
//
//  Created by sarah hemood  on 19/11/1443 AH.
//

import SwiftUI

struct profile1: View {
    @State var toggleIsOn: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
        ZStack{
           Color("Color1")
                .ignoresSafeArea()
            VStack(spacing:40){
        HStack(spacing:100){
        HStack{
        Image("Image3-1")
            .resizable()
            .frame(width: 50, height: 50)
            VStack{
        HStack{
         Text("Nasser Ali")
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
                    .frame(width: 300, height:150)
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
                        HStack(spacing:175){
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
                        HStack(spacing:140){
                        HStack{
                    Image(systemName: "power")
                        .foregroundColor(Color("Color3"))
                        Text("Driver Account")
                            .font(.system(size: 14, weight: .regular, design: .default))
                        }
                        Image(systemName: "chevron.right")
                                
                      
                        }
                        HStack(spacing:170){
                        HStack{
                    Image("Image4-2")
                        .foregroundColor(Color("Color3"))
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
         
        .navigationTitle("profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading:
Button{
            presentationMode.wrappedValue
                .dismiss()
        }label: {
            Image(systemName:"x.circle.fill")
        })
}
}
}
struct profile1_Previews: PreviewProvider {
    static var previews: some View {
        profile1()
    }
}
