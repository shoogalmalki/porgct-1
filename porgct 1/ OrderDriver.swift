//
//  OrderDriver.swift
//  porgct 1
//
//  Created by May AlQusayer on 26/11/1443 AH.
//


import SwiftUI
import Foundation
extension View {
    func cornerRadius55(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner53(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
        
    }
}

struct RoundedCorner55: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct OrderDriver: View {
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    var frameworks = ["Pick Up Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    var frameworks2 = ["Drop Of Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    @State private var selectedFrameworkIndex = ""
    @State var showRectangle: Bool = false
    @State var showRectangle1: Bool = false
    @State var showRectangle2: Bool = false
    @State var shouldGoToWhatEverPage55: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType
    = .camera
    @State private var checkbox2: Bool = false

    @State private var image: UIImage?
//    @EnvironmentObject var appState: AppState
    
    var body: some View {
       
        NavigationView {
            ZStack {
            Rectangle ()
                .cornerRadius53 (topLeft, corners: .topLeft)
        .cornerRadius53 (topRight, corners: .topRight)
        .cornerRadius53 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius53 (bottomRight, corners: .bottomRight)
            
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
                ZStack{
                    VStack(spacing:22){
                    HStack{
                        
                        ZStack{
                        Image(systemName:"shippingbox")
                    RoundedRectangle (cornerRadius: 10)
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color.mint)
                            Image(systemName:"shippingbox")
                          
                        }
    
                        Image("Image12")
                        
                        ZStack{
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color.gray.opacity(0.2))
                            Image(systemName:"person.text.rectangle")
                        }
                        Image("Image12")
                        ZStack{
                        Image(systemName:"doc.on.doc")
                        RoundedRectangle (cornerRadius: 10)
                            .frame(width: 40, height: 40)
                            .foregroundColor(Color.gray.opacity(0.2))
                        }
                    }                        .offset(y:33)

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
                        }                        .offset(y:33)


                        ZStack{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("Color2"),lineWidth: 1)
                            .frame(width: 300, height: 90)
                            VStack(alignment: .leading){
                            Text("More Details ...")
                                    .foregroundColor(Color("Color2"))
                                    .padding(.trailing,88)
                        Text("Exp: Keep away from heat.")
                                    .foregroundColor(Color("Color2"))
                            }.padding(.trailing,70)
                                .padding(.bottom,40)
                        }
                        .offset(y:33)

                        ZStack{
                            Rectangle()
                                .frame(width: 320, height: 44)
                                .foregroundColor(Color.mint.opacity(0.2))
                            
                                .cornerRadius(12)
                        HStack(spacing:130){
                        HStack{
                    Image(systemName: "calendar.badge.clock")
                                .font(.system(size: 12, weight: .regular, design: .default))
                        .foregroundColor(Color("Color3"))
                        Text("Schedule Your Order")
                                .fontWeight(.bold)
                            .font(.system(size: 13, weight: .regular, design: .default))
                            .foregroundColor(Color("Color3"))

                        }
                        Image(systemName: "chevron.right")
                                .font(.system(size: 9, weight: .bold, design: .default))
                                .foregroundColor(Color("Color3"))

                        }
                        }
                        .offset(y:33)
                        Button(action: {}
                               , label: {
                          
                           
                            


                            ZStack{
                            Rectangle()
                            .frame(width: 320, height: 38)
                            .foregroundColor(Color("Color3"))
                            .cornerRadius(14)
                            Text("Place Your Order")
                                    .foregroundColor(Color.white)
                            }
                        })
                        .offset(y:33)
                        
//
                        
                }
                    
                 
            }
            
            }
           
            .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            .ignoresSafeArea()
                .navigationBarHidden(true)
            
        
    }
}
}


struct OrderDriver_Previews: PreviewProvider {
    static var previews: some View {
        OrderDriver()
    }
}
