//
//  maicro.home.swift
//  porgct 1
//
//  Created by sarah hemood  on 21/11/1443 AH.
//

import SwiftUI
import Foundation
//green and gray
extension View {
    func cornerRadius9(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner9(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedCorner9: Shape {
    
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
}

//green and gray
struct home: View {
    //greem and gray
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    var frameworks = ["Pick Up Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    var frameworks2 = ["Drop Of Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    @State private var selectedFrameworkIndex = ""
    @State var shouldGoToWhatEverPage: Bool = false
    @State var showModelView = false
    
    var body: some View {
        //green and gray
        NavigationView{
            
            ZStack {
                Rectangle ()
                    .cornerRadius9 (topLeft, corners: .topLeft)
                    .cornerRadius9 (topRight, corners: .topRight)
                    .cornerRadius9 (bottomLeft, corners:
                            .bottomLeft)
                    .cornerRadius9 (bottomRight, corners: .bottomRight)
                
                    .foregroundColor(backgroundcolor)
                    .frame(width: .infinity, height: 850)
                    .offset(x: 0, y: 130)
                //                VStack{
                VStack(spacing:33){
                    
                    Spacer()
                    Spacer()
                    HStack{
                        HStack(alignment: .bottom ,spacing:250){
                            
                            Button(action: {}
                                   , label:{
                                Image(systemName: "person.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 23))
                            })
                            Button(action: {}
                                   , label:{
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 23))
                            })
                        }
                        NavigationLink(isActive: $shouldGoToWhatEverPage, destination: {
                            navigationdriver()
                        }, label: {
                            
                        })
                        Button(action: {
                            shouldGoToWhatEverPage.toggle()
                        }
                               , label:{
                            Image(systemName: "bell.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                        })
                    }
                    //                        (alignment: .leading)
                    
                    Spacer()
                    
                    ZStack{
                        
                        //            Capsule()
                        //                            .stroke(Color.gray,lineWidth: 1)
                        //                            .padding()
                        //                            .frame(width: 300, height: 60)
                        //
                        //                            .foregroundColor(Color("Color1"))
                        //                            .border(Color("Color2"),width:1.5)
                        //                            .cornerRadius(3)
                        
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
                    ScrollView(.vertical,showsIndicators: false) {
                        VStack(spacing:20){
                            ZStack{
                                Rectangle()
                                    .frame(width: .infinity, height:170)
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
                                            .offset(y:-5)
                                        Text("Riyadh")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .offset(y:-5)
                                    }
                                    
                                    Text("Starting:")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-120)
                                    HStack{
                                        Image(systemName: "calendar.badge.clock")
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .offset(x:-70)
                                            .offset(y:3)
                                        Text("Sun, June 5(8 -11AM)")
                                            .font(.caption)
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .offset(x:-70)
                                            .offset(y:3)
                                        
                                    }
                                    Text("Arrival:")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-125)
                                        .offset(y:7)
                                    HStack{
                                        Image(systemName: "calendar.badge.clock")
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .offset(x:-70)
                                            .offset(y:10)
                                        Text("Fri, June 3(8 -11AM)")
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .font(.caption)
                                            .offset(x:-70)
                                            .offset(y:10)
                                        
                                    }
                                    
                                    Button(action: {}, label: {
                                        Text("Request")
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                        
                                    })
                                    .frame(width: 190, height:25)
                                    .background(.orange)
                                    .cornerRadius(5)
                                    .offset(y:5)
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
                            }
                            //                }
                            ZStack{
                                Rectangle()
                                    .frame(width: 325, height:170)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                VStack{
                                    Image("Image1")
                                        .resizable()
                                        .frame(width: 250, height:25)
                                    HStack(spacing:190){
                                        Text("Taif")
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                            .offset(y:-5)
                                        Text("Riyadh")
                                            .font(.footnote)
                                            .fontWeight(.semibold)
                                            .offset(y:-5)
                                    }
                                    
                                    Text("Starting:")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-120)
                                    HStack{
                                        Image(systemName: "calendar.badge.clock")
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .offset(x:-70)
                                            .offset(y:3)
                                        Text("Sun, June 5(8 -11AM)")
                                            .font(.caption)
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .offset(x:-70)
                                            .offset(y:3)
                                        
                                    }
                                    Text("Arrival:")
                                        .font(.footnote)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                        .offset(x:-125)
                                        .offset(y:7)
                                    HStack{
                                        Image(systemName: "calendar.badge.clock")
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .offset(x:-70)
                                            .offset(y:10)
                                        Text("Fri, June 3(8 -11AM)")
                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                            .font(.caption)
                                            .offset(x:-70)
                                            .offset(y:10)
                                        
                                    }
                                    
                                    Button(action: {}, label: {
                                        Text("Request")
                                            .font(.callout)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color.white)
                                        
                                    })
                                    .frame(width: 190, height:25)
                                    .background(.orange)
                                    .cornerRadius(5)
                                    .offset(y:5)
                                }
                                ZStack{
                                    Image("Image3-1")
                                        .resizable()
                                        .frame(width: 57, height:55)
                                        .offset(x:118)
                                        .offset(y:-2)
                                    Rectangle()
                                        .frame(width: 33, height:15)
                                        .cornerRadius(5)
                                        .offset(x:120)
                                        .offset(y:22)
                                        .foregroundColor(Color("Color1"))
                                    HStack{
                                        Text("4.9")
                                            .font(.caption)
                                            .fontWeight(.medium)
                                            .offset(x:135)
                                            .offset(y:20)
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color.orange)
                                            .frame(width:10.0 , height: 22)
                                            .offset(x:95)
                                            .offset(y:19)
                                    }
                                    Text("OMER SALEH")
                                        .font(.footnote)
                                        .offset(y:38)
                                        .offset(x:110)
                                    
                                    
                                }
                            }
                            
                            
                        }
                        //            })
                    }
                    //                    }
                    
                    //green and gray
                }
            }
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            .ignoresSafeArea()
//            .navigationBarHidden(true)
            
            
            .navigationBarItems(leading:
                                    Button{
                showModelView.toggle()
            }label: {
                Image(systemName:"person").font(.title)
                    .foregroundColor(showModelView ? .green : .red)

            })
            .sheet(isPresented:$showModelView , content:
                    {
                profile1()
            })
            
            
        }
        
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
