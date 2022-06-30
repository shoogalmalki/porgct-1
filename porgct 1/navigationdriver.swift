//
//  navigationdriver.swift
//  porgct 1
//
//  Created by sarah hemood  on 20/11/1443 AH.
//

import SwiftUI


struct navigationdriver: View {
    
    var body: some View {
        
        ZStack {
            Color("Color3")
                .ignoresSafeArea()
//            navigationTitle("wwww")
//            .navigationBarHidden(true)
            ZStack{
                Rectangle()
                    .frame(width: .infinity, height: 670)
                    .foregroundColor(Color("Color1"))
                    .cornerRadius(20)
                    .offset(y:50)
                VStack{
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 325, height:200)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        VStack{
                            Image("Image1-1")
                                .resizable()
                                .frame(width: 250, height:25)
                            HStack(spacing:190){
                                Text("Taif")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                Text("Riyadh")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                            }
                            
                            HStack(spacing:35){
                                VStack(alignment: .leading){
                                    HStack{
                                        Image(systemName: "calendar.badge.clock")
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .font(.system(size: 12))
                                        Text("Sun, June 5(8 -11AM)")
                                            .font(.system(size: 12))
                                        
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    }
                                    
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 8)
                                            .stroke(.gray,lineWidth: 1)
                                            .frame(width: 170, height: 65)
                                        HStack{
                                            VStack(alignment:.leading ,spacing: 22){
                                                Text("Note:")
                                                    .fontWeight(.bold)
                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                Text("Baby walker.")
                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            }
                                            Image("Image9")
                                            
                                        }
                                    }
                                }
                                VStack{
                                    ZStack(alignment:.bottom){
                                        Image("Image2-1")
                                            .resizable()
                                            .frame(width: 57, height:55)
                                        
                                        ZStack{
                                            Rectangle()
                                                .frame(width: 33, height:15)
                                                .cornerRadius(5)
                                            
                                                .foregroundColor(Color("Color1"))
                                            
                                            HStack{
                                                Text("4.9")
                                                    .font(.caption)
                                                    .fontWeight(.medium)
                                                
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color.orange)
                                                    .frame(width:10.0 , height: 22)
                                                
                                            }
                                        }
                                        
                                    }
                                    Text("OMER SALEH")
                                        .font(.footnote)
                                }
                                
                            }
                            HStack{
                                Button(action: {}, label: {
                                    Text("Accept")
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                    
                                })
                                .frame(width: 140, height:30)
                                .background(.green)
                                .cornerRadius(5)
                                
                                
                                Button(action: {}, label: {
                                    Text("Decline")
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                    
                                })
                                .frame(width: 140, height:30)
                                .background(.red)
                                .cornerRadius(5)
                                
                            }
                        }
                        
                    }
                    
                }
                
            }
        }
       
        
        
    }
}

struct navigationdriver_Previews: PreviewProvider {
    static var previews: some View {
        navigationdriver()
    }
}
