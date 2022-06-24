//
//  ContentView.swift
//  porgct 1
//
//  Created by shoog almalki on 22/11/1443 AH.
//

import MapKit
import SwiftUI
import Foundation
extension View {
    func cornerRadius99(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner99(radius: radius, corners: corners) )
            .padding(0.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.272, green: 0.683, blue: 0.674)/*@END_MENU_TOKEN@*/)
    }
}
struct RoundedCorner99: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct order: View {
    
    @StateObject private var viewModel = ContentViewModel()
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType
    = .camera
    
    @State private var image: UIImage?
    @State var topLeft: CGFloat = 10
    @State var topRight: CGFloat = 10
    @State var bottomLeft: CGFloat = 0
    @State var bottomRight: CGFloat = 0
    let upcolor: Color = Color(red: Double(69)/255, green: Double(174)/255, blue: Double(172)/255)
    let backgroundcolor: Color = Color(red: Double(247)/255, green: Double(248)/255, blue: Double(248)/255)
    let lightgray: Color = Color(red: Double(220)/255, green: Double(220)/255, blue: Double(220)/255)
    let lightupcolor: Color = Color(red: Double(173)/255, green: Double(209)/255, blue: Double(208)/255)
    var body: some View {
        
       
      
           
        ZStack{

            Rectangle ()
                .cornerRadius99 (topLeft, corners: .topLeft)
        .cornerRadius99 (topRight, corners: .topRight)
        .cornerRadius99 (bottomLeft, corners:
                .bottomLeft)
        .cornerRadius99 (bottomRight, corners: .bottomRight)
                .foregroundColor(backgroundcolor)
                .frame(width: 360, height: 850)
                .offset(x: 0, y: 130)
            
         .background(RoundedRectangle(cornerRadius: 8, style:   .circular).fill(Color(UIColor.systemMint)))
            
            
            VStack{
                Image ("X")
                    .frame(width: 20, height: 20)
                    .offset(x: -160, y: -240)
        HStack{
           
            ZStack{
                Image ("Line 1-")
                    .frame(width: 20, height: 40)
                    .offset(x: -55, y: -230)
                Image ("Line 1-")
                    .frame(width: 20, height: 40)
                    .offset(x: 65, y: -230)
                RoundedRectangle (cornerRadius: 10)
                .foregroundColor(Color(UIColor.systemMint))
  .frame(width: 40, height: 40)
  .offset(x: -120, y: -230)
                Image ("Order")
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color(UIColor.systemMint))
                    .offset(x: -120, y: -230)
                RoundedRectangle (cornerRadius: 10)
                        .foregroundColor(Color(UIColor.lightGray))
                    .frame(width: 40, height: 40)
                    .offset(x: 0, y: -230)
                    Image ("Offers")
                        .frame(width: 30, height: 30)
                        .offset(x: 0, y: -230)
                RoundedRectangle (cornerRadius: 10)
                    .foregroundColor(Color(UIColor.lightGray))
                .frame(width: 40, height: 40)
                .offset(x: 120, y: -230)
                Image ("Payment")
                    .frame(width: 30, height: 30)
                    .offset(x: 120, y: -230)
            }
        }
                HStack{
                Text ("Order")
                        .font(.system(size: 13))
                        .offset(x: -67, y: -235)
                Text ("Offers")
                        .font(.system(size: 13))
                        .offset(x: 10, y: -235)

                Text ("Payment")
                        .font(.system(size: 13))
                        .offset(x: 77, y: -235)

                }

                
                
            }
      
                ZStack{
                    RoundedRectangle (cornerRadius: 10)
                    
                        .strokeBorder(.gray, lineWidth: 1)
                    
                        .frame(width: 300, height: 80)
                        .offset(x: 0, y: -140)
                    Image ("Line")
                        .frame(width: 40, height: 40)
                        .offset(x: 15, y: -140)
                    Image ("Point")
                        .frame(width: 60, height: 40)
                        .offset(x: -135, y: -140)

                    Image ("Swap")
                        .frame(width: 20, height: 20)
                        .offset(x: -115, y: -140)
                    
                    Image ("Location")
                        .frame(width: 11.59, height: 16.66)
                        .offset(x: 120, y: -160)
                    
                    Image ("Location")
                        .frame(width: 11.59, height: 16.66)
                        .offset(x: 120, y: -120)
                    
                    RoundedRectangle (cornerRadius: 10)
                        .strokeBorder(.gray, lineWidth: 1)
                .frame(width: 170, height: 110)
                .offset(x: -10, y: -20)
//
                    VStack {
                    
                Image(uiImage: image ?? UIImage(named: "Plus")!)
                        Button("Choose Picture") {
                            self.showSheet = true
                        }.padding()
                            .offset(x: -10, y: -15)
                            .actionSheet(isPresented: $showSheet) {
                                 ActionSheet(title: Text("Select Photo"),
                                             message: Text("Choose"), buttons: [
                                                .default(Text("Photo Library")) {
                                                    self.showImagePicker = true
                                                    self.sourceType = .photoLibrary
                                                },
                                                .default(Text("Camera")) {
                                                    self.showImagePicker = true
                                                    self.sourceType = .camera
                                                },
                                                .cancel()
                                                ])
                                
                            }
            }
                    //
//                    Image ("Plus")
//                        .frame(width: 5, height: 5)
//                        .offset(x: 0, y: -45)
//                    Text ("Add Photo Of Your Parcel")
//                            .font(.system(size: 13))
//                            .foregroundColor(upcolor)
//                            .offset(x: 0, y: 0)
                    HStack{
//                    ZStack{
//                    RoundedRectangle (cornerRadius: 10)
//                        .foregroundColor(lightupcolor.opacity(0.5))
//                        .frame(width: 45, height: 45)
//                        .offset(x: 425, y: 50)
//                        Image ("image 1")
//                            .frame(width: 24, height: 24)
//                            .offset(x: 425, y: 45)
//                        Text ("Small")
//                                .font(.system(size: 10))
//                                .foregroundColor(upcolor)
//                                .offset(x: 425, y: 65)
//                    }
//                        ZStack{
//                        RoundedRectangle (cornerRadius: 10)
//                            .foregroundColor(lightupcolor.opacity(0.5))
//                            .frame(width: 45, height: 45)
//                            .offset(x: 465, y: 50)
//                            Image ("image 2")
//                                .frame(width: 24, height: 30)
//                                .offset(x: 465, y: 45)
//                            Text ("Medium")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(upcolor)
//                                    .offset(x: 465, y: 65)
//
//                        }
//                        ZStack{
//                        RoundedRectangle (cornerRadius: 10)
//                            .foregroundColor(lightupcolor.opacity(0.5))
//                            .frame(width: 45, height: 45)
//                            .offset(x: 500, y: 50)
//                            Image ("image 3")
//                                .frame(width: 24, height: 24)
//                                .offset(x: 503, y: 45)
//                            Text ("Large")
//                                    .font(.system(size: 10))
//                                    .foregroundColor(upcolor)
//                                    .offset(x: 500, y: 65)
//
//                        }
                    
                      
                    
                    ZStack{
                        RoundedRectangle (cornerRadius: 10)
                            .strokeBorder(.gray, lineWidth: 1)
                    .frame(width: 300, height: 140)
                    .offset(x: 300, y: 130)
                    }
                        ZStack{
                        RoundedRectangle (cornerRadius: 10)
                            .foregroundColor(lightupcolor.opacity(0.5))
                            .frame(width: 300, height: 45)
                            .offset(x: -5, y: 255)
                    
                            
                            Image ("Calendar")
                                .frame(width: 24, height: 24)
                                .offset(x: -110, y: 255)
                            Text ("Schedule Your Order ")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .foregroundColor(upcolor)
                                    .offset(x: -20, y: 255)
                            Image (">")
                                .frame(width: 24, height: 24)
                                .offset(x: 30, y: 255)
                        }
                        

                        ZStack{
                            Image ("Rectangle")
                                .frame(width: 24, height: 24)
                                .offset(x: -530, y: 300)

                        Text ("I agree to terms & conditions")
                            .font(.system(size: 13))
                            .fontWeight(.bold)
                            .foregroundColor(upcolor)
                            .offset(x: -320, y: 300)
                        RoundedRectangle (cornerRadius: 10)
                                .foregroundColor(Color(UIColor.systemMint))
                            .frame(width: 300, height: 45)
                            .offset(x: -310, y: 350)
                           
                            Text ("Place Your Order ")
                                .font(.system(size: 16))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                    .offset(x: -310, y: 350)
                        
                        }
                }
                    

                        
    }
    }
    }
struct order_Previews: PreviewProvider {
    static var previews: some View {
        order()
    }
}
}


