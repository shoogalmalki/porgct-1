//
//  homeuser.swift
//  porgct 1
//
//  Created by sarah hemood  on 20/11/1443 AH.
//

import SwiftUI
import Foundation
//green and gray
extension View {
    func cornerRadius4(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner4(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedCorner4: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
}

struct homedriver: View {
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    @State var shouldGoToWhatEverPage: Bool = false
    @State var shouldGoToWhatEverPage44: Bool = false
    @State var showModelView3 = false
    @State var shouldGoToWhatEverPage8: Bool = false
    @State var shouldGoToWhatEverPage7: Bool = false

    var body: some View {
        NavigationView {
            ZStack {
            Rectangle ()
                .cornerRadius4 (topLeft, corners: .topLeft)
        .cornerRadius4 (topRight, corners: .topRight)
        .cornerRadius4 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius4 (bottomRight, corners: .bottomRight)
            
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
                VStack(spacing:33){
                    Spacer()
               Spacer()
                    HStack{
                        HStack{
                      
                        Button(action: {
                          
                        }
                               , label: {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                        })
                        //(((كود اللينك)))
                        NavigationLink(isActive: $shouldGoToWhatEverPage, destination: {
                            navigationdriver()
                        }, label: {
                            
                        })
                        ///
                        Button(action: {
                            shouldGoToWhatEverPage.toggle()
                        }
                             , label:{
                            Image(systemName: "bell.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                    })
                    }
                    }
                    .padding(.leading,270)
//                        (alignment: .leading)
                    
Spacer()
                    HStack{
                        NavigationLink(isActive: $shouldGoToWhatEverPage7, destination: {
                            NavigationUser()
                        }, label: {
                        })
                    Button(action: {
                        shouldGoToWhatEverPage7.toggle()
                    }
                           , label:{
                        Image(systemName: "bell.fill")
                            .foregroundColor(.red)
                            .font(.system(size: 23))
                           
                    })
                        NavigationLink(isActive: $shouldGoToWhatEverPage8, destination: {
                            new_order_sarah()
                        }, label: {
                        })
                        Button(action: {
                            shouldGoToWhatEverPage8.toggle()

                        }
                               , label:{
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.red)
                                .font(.system(size: 23))
                        })
                    }
                    ZStack{
                        Image("Image4-1")
                            .resizable()
                            .foregroundColor(Color("Color2"))
                            .frame(width:35, height:42)
                            .offset(x:-110)
                        Text("Pick Up Location")
                            .font(.caption)
                            .fontWeight(.light)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.701))
                            .offset(x:-35,y:-11)
                        Divider()
                            .frame(width: 200)
                        Text("Drop Of Location")
                            .font(.caption)
                            .fontWeight(.light)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.701))
                            .offset(x:-33,y:15)
                            .overlay{
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color("Color2"),lineWidth: 1)
                                    .frame(width: 300, height: 60)
                                    .offset(y:-3)
                                
                            }
                    }
                    ScrollView(.vertical,showsIndicators: false) {
                    ZStack{
                Rectangle()
                    .frame(width: 325, height:190)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                        VStack{
                      Image("Image1-1")
                            .resizable()
                            .frame(width: 250, height:25)
                            .offset(y:10)

                        HStack(spacing:190){
                            Text("Taif")
                                .font(.callout)
                                .fontWeight(.semibold)
                                .offset(y:5)
                            Text("Riyadh")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .offset(y:6)
                        }
                            HStack{
                                Image(systemName: "calendar.badge.clock")
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    .offset(x:-70)
                                    .offset(y:10)
                            Text("Sun, June 5(8 -11AM)")
                                    .font(.caption)
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    .offset(x:-70)
                                    .offset(y:10)
                                
                            }
                            ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(.gray,lineWidth: 1)
                                     .frame(width: 200, height: 65)
                                     .offset(x:-60 , y: 10)
                                
                                
                                Image("Image9")
                                    .offset(x:-4 ,y: 10)
        
                                Text("Note:")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    .offset(x:-130, y: -10)
                                Text("Baby walker.")
                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                    .offset(x:-110, y: 30)
                            }
                            ZStack{
                            Image("Image2-1")
                                .resizable()
                                .frame(width: 57, height:55)
                                .offset(x:120 , y: -80)
                                Rectangle()
                                    .frame(width: 33, height:15)
                                    .cornerRadius(5)
                                    .offset(x:120)
                                    .offset(y:-55)
                                    .foregroundColor(.gray)
                                HStack{
                                Text("4.9")
                                    .font(.caption)
                                    .fontWeight(.medium)
                                    .offset(x:135)
                                    .offset(y:-55)
                                    Image(systemName: "star.fill")
                                        .foregroundColor(Color.orange)
                                        .frame(width:10.0 , height: 22)
                                        .offset(x:95)
                                        .offset(y:-55)
                            }
                                Text("OMER SALEH")
                                    .font(.footnote)
                                    .offset(y:-30)
                                    .offset(x:110)


                            }
                            
                }
                       
                        Button(action: {
                         
                        }, label: {
                            Text("Makee an offer")
                                .font(.callout)
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)

                        })
                            .frame(width: 220, height:25)
                            .background(.orange)
                                .cornerRadius(5)
                                .offset(y:80)
            }
                    
                        ZStack{
                    Rectangle()
                        .frame(width: 325, height:190)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                            VStack{
                          Image("Image1-1")
                                .resizable()
                                .frame(width: 250, height:25)
                                .offset(y:10)

                            HStack(spacing:190){
                                Text("Taif")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .offset(y:5)
                                Text("Riyadh")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .offset(y:6)
                            }
                                HStack{
                                    Image(systemName: "calendar.badge.clock")
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-70)
                                        .offset(y:10)
                                Text("Sun, June 5(8 -11AM)")
                                        .font(.caption)
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-70)
                                        .offset(y:10)
                                    
                                }
                                ZStack{
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(.gray,lineWidth: 1)
                                         .frame(width: 200, height: 65)
                                         .offset(x:-60 , y: 10)
                                    
                                    
                                    Image("Image9")
                                        .offset(x:-4 ,y: 10)
            
                                    Text("Note:")
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-130, y: -10)
                                    Text("Baby walker.")
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-110, y: 30)
                                }
                                ZStack{
                                Image("Image2-1")
                                    .resizable()
                                    .frame(width: 57, height:55)
                                    .offset(x:120 , y: -80)
                                    Rectangle()
                                        .frame(width: 33, height:15)
                                        .cornerRadius(5)
                                        .offset(x:120)
                                        .offset(y:-55)
                                        .foregroundColor(.gray)
                                    HStack{
                                    Text("4.9")
                                        .font(.caption)
                                        .fontWeight(.medium)
                                        .offset(x:135)
                                        .offset(y:-55)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                            .frame(width:10.0 , height: 22)
                                            .offset(x:95)
                                            .offset(y:-55)
                                }
                                    Text("OMER SALEH")
                                        .font(.footnote)
                                        .offset(y:-30)
                                        .offset(x:110)


                                }
                                
                    }
                            Button(action: {}, label: {
                                Text("Makee an offer")
                                    .font(.callout)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.white)

                            })
                                .frame(width: 220, height:25)
                                .background(.orange)
                                    .cornerRadius(5)
                                    .offset(y:80)
                }
            }
            }
            }
                .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
                .ignoresSafeArea()
//                    .navigationBarHidden(true)
                    .navigationBarItems(leading:
                                            Button{
                        showModelView3.toggle()
                    }label: {
                        Image(systemName:"person.circle.fill")
                            .font(.system(size: 23))
                            .foregroundColor(showModelView3 ? .green : .white)
                            .offset(y:27)
                    })
                    
                    .sheet(isPresented:$showModelView3 , content:
                            {
                        profile()
                    })
    }
}
    }

struct homedriver_Previews: PreviewProvider {
    static var previews: some View {
        homedriver()
    }
}
