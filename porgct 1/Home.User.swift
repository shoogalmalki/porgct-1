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
    @State var shouldGoToWhatEverPage8: Bool = false
    @State var shouldGoToWhatEverPage9: Bool = false

    var body: some View {
        NavigationView{
        ZStack{
        ZStack{
            Color("Color3")
                .ignoresSafeArea()
            
            HStack{
                HStack{
                    
                    Button(action: {
                    }
                           , label:{
                        Image(systemName: "person.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 23))
                        
                    })
                    NavigationLink(isActive: $shouldGoToWhatEverPage9, destination: {
                        new_order_sarah()
                    }, label: {
                    })
                    Button(action: {
                        shouldGoToWhatEverPage9.toggle()
                    }
                           , label:{
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 23))
                    })
                }
                NavigationLink(isActive: $shouldGoToWhatEverPage8, destination: {
                    navigationdriver()
                }, label: {

                })
                Button(action: {
                    shouldGoToWhatEverPage8.toggle()
                }
                       , label:{
                    Image(systemName: "bell.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 23))
                    
                })
            }
            .padding(.bottom,700)
        }
            
//            ZStack{
            Rectangle()
                .frame(width: 380, height: 650)
                .foregroundColor(Color("Color1"))
                .cornerRadius(20)
                .offset(y:58)
//                VStack(spacing:44){
//
//                    ZStack{
//                        Image("Image4-1")
//                            .resizable()
//                            .foregroundColor(Color("Color2"))
//                            .frame(width:35, height:42)
//                            .offset(x:-110)
//
//
//                        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
//                            ForEach(0 ..< frameworks.count) {
//                                Text(self.frameworks[$0])
//                            }
//
//                        }
//
//
//                        .font(.title)
//
//
//
//                        .offset(x:-35,y:-11)
//                        Divider()
//                            .frame(width: 200)
//                        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
//                            ForEach(0 ..< frameworks2.count) {
//                                Text(self.frameworks2[$0])
//                            }
//
//                        }
//
//                        .offset(x:-33,y:15)
//                        .overlay{
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(Color("Color2"),lineWidth: 1)
//                                .frame(width: 300, height: 60)
//                                .offset(y:-3)
//
//                        }
//                    }
////                    ScrollView(.vertical,showsIndicators: false) {
//                        VStack(spacing:20){
//                            ZStack{
//                                Rectangle()
                                   
//                                    .foregroundColor(.white)
//                                    .cornerRadius(15)
//
//                                VStack{
//                                    Image("Image1-1")
//                                        .resizable()
//                                        .frame(width: 250, height:25)
//                                    HStack(spacing:190){
//                                        Text("Taif")
//                                            .font(.callout)
//                                            .fontWeight(.semibold)
//                                            .offset(y:-5)
//                                        Text("Riyadh")
//                                            .font(.footnote)
//                                            .fontWeight(.semibold)
//                                            .offset(y:-5)
//                                    }
//
//                                    Text("Starting:")
//                                        .font(.footnote)
//                                        .fontWeight(.regular)
//                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                        .offset(x:-120)
//                                    HStack{
//                                        Image(systemName: "calendar.badge.clock")
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .offset(x:-70)
//                                            .offset(y:3)
//                                        Text("Sun, June 5(8 -11AM)")
//                                            .font(.caption)
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .offset(x:-70)
//                                            .offset(y:3)
//
//                                    }
//                                    Text("Arrival:")
//                                        .font(.footnote)
//                                        .fontWeight(.regular)
//                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                        .offset(x:-125)
//                                        .offset(y:7)
//                                    HStack{
//                                        Image(systemName: "calendar.badge.clock")
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .offset(x:-70)
//                                            .offset(y:10)
//                                        Text("Fri, June 3(8 -11AM)")
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .font(.caption)
//                                            .offset(x:-70)
//                                            .offset(y:10)
//
//                                    }
//
//                                    Button(action: {
//
//
//                                    }, label: {
//                                        Text("Request")
//                                            .font(.callout)
//                                            .fontWeight(.semibold)
//                                            .foregroundColor(Color.white)
//
//                                    })
//                                    .frame(width: 190, height:25)
//                                    .background(.orange)
//                                    .cornerRadius(5)
//                                    .offset(y:5)
//                                }
//                                ZStack{
//                                    Image("Image2-1")
//                                        .resizable()
//                                        .frame(width: 57, height:55)
//                                        .offset(x:118)
//                                        .offset(y:-2)
//                                    Rectangle()
//                                        .frame(width: 33, height:15)
//                                        .cornerRadius(5)
//                                        .offset(x:120)
//                                        .offset(y:17)
//                                        .foregroundColor(Color("Color1"))
//                                    HStack{
//                                        Text("4.9")
//                                            .font(.caption)
//                                            .fontWeight(.medium)
//                                            .offset(x:135)
//                                            .offset(y:17)
//                                        Image(systemName: "star.fill")
//                                            .foregroundColor(Color.orange)
//                                            .frame(width:10.0 , height: 22)
//                                            .offset(x:95)
//                                            .offset(y:17)
//                                    }
//                                    Text("OMER SALEH")
//                                        .font(.footnote)
//                                        .offset(y:38)
//                                        .offset(x:110)
//
//
//                                }
//                            }
//                            //                }
//                            ZStack{
//                                Rectangle()
//                                    .frame(width: 325, height:170)
//                                    .foregroundColor(.white)
//                                    .cornerRadius(15)
//                                VStack{
//                                    Image("Image1")
//                                        .resizable()
//                                        .frame(width: 250, height:25)
//                                    HStack(spacing:190){
//                                        Text("Taif")
//                                            .font(.callout)
//                                            .fontWeight(.semibold)
//                                            .offset(y:-5)
//                                        Text("Riyadh")
//                                            .font(.footnote)
//                                            .fontWeight(.semibold)
//                                            .offset(y:-5)
//                                    }
//
//                                    Text("Starting:")
//                                        .font(.footnote)
//                                        .fontWeight(.bold)
//                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                        .offset(x:-120)
//                                    HStack{
//                                        Image(systemName: "calendar.badge.clock")
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .offset(x:-70)
//                                            .offset(y:3)
//                                        Text("Sun, June 5(8 -11AM)")
//                                            .font(.caption)
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .offset(x:-70)
//                                            .offset(y:3)
//
//                                    }
//                                    Text("Arrival:")
//                                        .font(.footnote)
//                                        .fontWeight(.bold)
//                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                        .offset(x:-125)
//                                        .offset(y:7)
//                                    HStack{
//                                        Image(systemName: "calendar.badge.clock")
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .offset(x:-70)
//                                            .offset(y:10)
//                                        Text("Fri, June 3(8 -11AM)")
//                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            .font(.caption)
//                                            .offset(x:-70)
//                                            .offset(y:10)
//
//                                    }
//
//                                    Button(action: {}, label: {
//                                        Text("Request")
//                                            .font(.callout)
//                                            .fontWeight(.semibold)
//                                            .foregroundColor(Color.white)
//
//                                    })
//                                    .frame(width: 190, height:25)
//                                    .background(.orange)
//                                    .cornerRadius(5)
//                                    .offset(y:5)
//                                }
//                                ZStack{
//                                    Image("Image3-1")
//                                        .resizable()
//                                        .frame(width: 57, height:55)
//                                        .offset(x:118)
//                                        .offset(y:-2)
//                                    Rectangle()
//                                        .frame(width: 33, height:15)
//                                        .cornerRadius(5)
//                                        .offset(x:120)
//                                        .offset(y:22)
//                                        .foregroundColor(Color("Color1"))
//                                    HStack{
//                                        Text("4.9")
//                                            .font(.caption)
//                                            .fontWeight(.medium)
//                                            .offset(x:135)
//                                            .offset(y:20)
//                                        Image(systemName: "star.fill")
//                                            .foregroundColor(Color.orange)
//                                            .frame(width:10.0 , height: 22)
//                                            .offset(x:95)
//                                            .offset(y:19)
//                                    }
//                                    Text("OMER SALEH")
//                                        .font(.footnote)
//                                        .offset(y:38)
//                                        .offset(x:110)
//
//
//                                }
//                            }
//
//
//                        }
//                        //            })
//                    }
//                }
            }
        }
    }
}
//}

struct Home_User_Previews: PreviewProvider {
    static var previews: some View {
        Home_User()
    }
}
