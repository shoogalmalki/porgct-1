//
//  Taste.swift
//  Habhoob
//
//  Created by sarah hemood  on 12/12/1443 AH.
//

import SwiftUI

struct Taste: View {
    @State var showRectangle: Bool = false

    var body: some View {
        ZStack{
            ZStack{
                Color(.systemMint)
                    .ignoresSafeArea()
            }
           
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 670)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .offset(y:48)
                    if showRectangle == true {
        
                            ZStack{
                                Rectangle()
                                    .frame(width: 325, height:200)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                
                                VStack( spacing: 3){
                                    HStack{
                                    Image("Image1-1")
                                        .resizable()
                                        .frame(width: 250, height:25)
                                        Button.init(action: {
                                            showRectangle.toggle()
                                            
                                        }, label: {
                                            ZStack{
                                                
                                                Image(systemName: "chevron.up")
                                            }
                                        })
                                    }
                                    HStack(spacing:190){
                                        Text("Taif")
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                        
                                        Text("Riyadh")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                        
                                    }
                                    VStack(spacing: 8){
                                        HStack(spacing:66){
                                            VStack(alignment: .leading){
                                                Text("Starting:")
                                                    .font(.footnote)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                
                                                HStack{
                                                    Image(systemName: "calendar.badge.clock")
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                    
                                                    Text("Sun, June 5(8 -11AM)")
                                                        .font(.caption)
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                    
                                                }
                                                Text("Arrival:")
                                                    .font(.footnote)
                                                    .fontWeight(.regular)
                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                
                                                HStack{
                                                    Image(systemName: "calendar.badge.clock")
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                    
                                                    Text("Fri, June 3(8 -11AM)")
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                        .font(.caption)
                                                    
                                                }
                                                
                                            }
                                            VStack{
                                                ZStack(alignment:.bottom){
                                                    Image("Image2-1")
                                                        .resizable()
                                                        .frame(width: 57, height:55)
                                                    
                                                    ZStack(alignment: .center){
                                                        Rectangle()
                                                            .frame(width: 40, height:15)
                                                            .cornerRadius(5)
                                                        
                                                            .foregroundColor(Color("Color1"))
                                                        
                                                        HStack(alignment: .center){
                                                            Text("4.9")
                                                                .font(.caption)
                                                                .fontWeight(.medium)
                                                            
                                                            Image(systemName: "star.fill")
                                                                .foregroundColor(Color.orange)
                                                                .frame(width:5.0 , height: 10)
                                                            
                                                        }
                                                    }
                                                    
                                                }
                                                Text("OMER SALEH")
                                                    .font(.footnote)
                                            }
                                        }
                                        Text("(The Offer Is 100SR)")
                                            .font(.system(size:12))
                                        NavigationLink(){
                                            Registration()
                                        } label: {
                                            
                                            Text("Request")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 18, weight: .semibold, design: .serif))
                                                .frame(width: 300, height:35)
                                                .background(.orange)
                                                .cornerRadius(5)
                                        }
                                        
                                        
                                        
                                    }
                                }
                            }
                            
                      
                    }
                    
                    
                    else{
        ZStack{
            Rectangle()
                .frame(width: 325, height:130)
                .foregroundColor(.white)
                .cornerRadius(15)
            VStack{
                HStack{
                    HStack{
                Image(systemName: "calendar.badge.clock")
                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                    .font(.system(size:12))
                Text("Sun, June 5(8 -11AM)")
//                                                        .font(.caption)
                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                    .font(.system(size:12))

            }
                    Button.init(action: {
                        showRectangle.toggle()

                    }, label: {

                            Image(systemName: "chevron.down")

                    })
                }
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
                Text("(The Offer Is 100SR)")
                    .font(.system(size:12))
        }
    }
                    }
}
    }
}
}
struct Taste_Previews: PreviewProvider {
    static var previews: some View {
        Taste()
    }
}
