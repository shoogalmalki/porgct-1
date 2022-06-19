//
//  navigationdriver.swift
//  porgct 1
//
//  Created by sarah hemood  on 20/11/1443 AH.
//

import SwiftUI
import Foundation
extension View {
    func cornerRadius33(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner33(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedCorner33: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct navigationdriver: View {
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
                .cornerRadius33 (topLeft, corners: .topLeft)
        .cornerRadius33 (topRight, corners: .topRight)
        .cornerRadius33 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius33 (bottomRight, corners: .bottomRight)
            
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
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
                        HStack(spacing:22){
                        VStack{
                        HStack{
                        Image(systemName: "calendar.badge.clock")
                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            .offset(x:-10)
                            .offset(y:-5)
                        Text("Sun, June 5(8 -11AM)")
                                .font(.caption)
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                .offset(x:-10)
                                .offset(y:-5)
                        }
                        
                        ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(.gray,lineWidth: 1)
                                 .frame(width: 170, height: 65)
                                 .offset(x:-10)
                                 .offset(y:-5)
                            HStack{
                                VStack{
                            Text("Note:")
                                .fontWeight(.bold)
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                               .offset(x:-29)
                                .offset(y:-18)
                            Text("Baby walker.")
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                .offset(x:-11)
//                                .offset(x:-90, y: 25)
                                }
                            Image("Image9")
                                    .offset(x:-7 ,y:-7)
//                                .offset(x:-11, y: 8)
                            }
                        }
                    
                        }
                            VStack{
                            ZStack{
                            Image("Image2-1")
                                .resizable()
                                .frame(width: 57, height:55)
                                .offset(x:17,y: -11)
        //                        .offset(x:110,y: 22 )
                                Rectangle()
                                    .frame(width: 40, height:15)
                                    .cornerRadius(5)
                                    .foregroundColor(.white)
                                    .offset(x:17,y: 12)
                                HStack{
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color.orange)
                                        .frame(width:10.0 , height: 22)
                                        .font(.system(size: 12, weight: .bold, design: .default))
                                        .offset(x:18,y: 12)

                                Text("4.9")
                                    .font(.caption)
                                    .fontWeight(.medium)
        //                            .offset(x:125)
                                    .offset(x:14,y: 12)

                                   
                            }
                               
                            }
                            Text("OMER SALEH")
                                .font(.footnote)
                                    .offset(y:-8)
                                    .offset(x:14)
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
                                .offset(y:-4)
                                        
                            Button(action: {}, label: {
                                Text("Decline")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)

                            })
                            .frame(width: 140, height:30)
                            .background(.red)
                                    .cornerRadius(5)
                                    .offset(y:-4)

                            
                        }
                    }
                  
        }
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
                            HStack(spacing:22){
                            VStack{
                            HStack{
                            Image(systemName: "calendar.badge.clock")
                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                .offset(x:-10)
                                .offset(y:-5)
                            Text("Sun, June 5(8 -11AM)")
                                    .font(.caption)
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    .offset(x:-10)
                                    .offset(y:-5)
                            }
                            
                            ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray,lineWidth: 1)
                                     .frame(width: 170, height: 65)
                                     .offset(x:-10)
                                     .offset(y:-5)
                                HStack{
                                    VStack{
                                Text("Note:")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                   .offset(x:-29)
                                    .offset(y:-18)
                                Text("Baby walker.")
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    .offset(x:-11)
    //                                .offset(x:-90, y: 25)
                                    }
                                Image("Image9")
                                        .offset(x:-7 ,y:-7)
    //                                .offset(x:-11, y: 8)
                                }
                            }
                        
                            }
                                VStack{
                                ZStack{
                                Image("Image2-1")
                                    .resizable()
                                    .frame(width: 57, height:55)
                                    .offset(x:17,y: -11)
            //                        .offset(x:110,y: 22 )
                                    Rectangle()
                                        .frame(width: 40, height:15)
                                        .cornerRadius(5)
                                        .foregroundColor(.white)
                                        .offset(x:17,y: 12)
                                    HStack{
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                            .frame(width:10.0 , height: 22)
                                            .font(.system(size: 12, weight: .bold, design: .default))
                                            .offset(x:18,y: 12)

                                    Text("4.9")
                                        .font(.caption)
                                        .fontWeight(.medium)
            //                            .offset(x:125)
                                        .offset(x:14,y: 12)

                                       
                                }
                                   
                                }
                                Text("OMER SALEH")
                                    .font(.footnote)
                                        .offset(y:-8)
                                        .offset(x:14)
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
                                    .offset(y:-4)
                                            
                                Button(action: {}, label: {
                                    Text("Decline")
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)

                                })
                                .frame(width: 140, height:30)
                                .background(.red)
                                        .cornerRadius(5)
                                        .offset(y:-4)

                                
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

struct navigationdriver_Previews: PreviewProvider {
    static var previews: some View {
        navigationdriver()
    }
}
