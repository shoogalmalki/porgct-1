//
//  new.order.sarah2.swift
//  Habhoob
//
//  Created by sarah hemood  on 01/12/1443 AH.
//

import SwiftUI


struct new_order_sarah2: View {
  
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
        
      
        
        VStack{
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
            }
            ZStack{
                location1()
            }
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color("Color2"),lineWidth: 1)
                    .frame(width: 170, height: 115)
                    
                VStack {
                    Image(uiImage: image ?? UIImage(named: "Plus")!)
                    Button("Choose Picture") {
                        self.showSheet = true
                    }
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
            }
            VStack{
           HStack(spacing:33){
                                    if showRectangle == true {

                                    Button.init(action: {
                                        showRectangle.toggle()

                                    }, label: {
                                        ZStack{
                            Rectangle()
                                                .frame(width: 66, height: 55)
                                                .foregroundColor(Color("Color3"))
                                                .cornerRadius(13)
                                            VStack{
                                        Image("image 1")
                                                .resizable()
                                                .frame(width: 30, height: 30)
                                                .foregroundColor(.black)
                                                Text("small")
                                                    .font(.caption2)
                                                
                                            }
                                        }
                                    })
                                    }
                                    else{
                                        Button.init(action: {
                                            showRectangle.toggle()

                                        }, label: {
                                            ZStack{

            Rectangle()
                                                    .frame(width: 66, height: 55)
                                                    .foregroundColor(Color("Color4"))
                                                    .cornerRadius(13)
                                                VStack{
                                            Image("image 1")
                                                    .resizable()
                                                    .frame(width: 30, height: 30)
                                                    Text("small")
                                                        .font(.caption2)
                                                        .foregroundStyle(.white)
                                                        .font(.system(size: 20, weight: .bold, design: .default))
                                                    
                                                }
                                            }
                                        })
                                    }
               if showRectangle1 == true {

                                       Button.init(action: {
                                           showRectangle1.toggle()

                                       }, label: {
                                           ZStack{
                               Rectangle()
                                                   .frame(width: 66, height: 55)
                                                   .foregroundColor(Color("Color3"))
                                                   .cornerRadius(13)
                                               VStack{
                                           Image("image 2")
                                                   .resizable()
                                                   .frame(width: 30, height: 30)
                                                   .foregroundColor(.black)
                                                   Text("Medium")
                                                       .font(.caption2)
                                               }
                                           }
                                       })
                                       }
                                       else{
                                           Button.init(action: {
                                               showRectangle1.toggle()

                                           }, label: {
                                               ZStack{
                                   Rectangle()
                                                       .frame(width: 66, height: 55)
                                                       .foregroundColor(Color("Color4"))
                                                       .cornerRadius(13)
                                                   VStack{
                                               Image("image 2")
                                                       .resizable()
                                                       .frame(width: 30, height: 30)
                                                       Text("Medium")
                                                           .font(.caption2)
                                                           .foregroundStyle(.white)
                                                           .font(.system(size: 15, weight: .bold, design: .default))
                                                   }
                                               }
                                           })
                                       }
         if showRectangle2 == true {

                                           Button.init(action: {
                                               showRectangle2.toggle()

                                           }, label: {
                                               ZStack{
                                   Rectangle()
                                                       .frame(width: 66, height: 55)
                                                       .foregroundColor(Color("Color3"))
                                                       .cornerRadius(13)
                                                   VStack{
                                               Image("image 3")
                                                       .resizable()
                                                       .frame(width: 30, height: 30)
                                                       Text("large")
                                                           .font(.caption2)
                                                   }
                                               }
                                           })
                                           }
                                           else{
                                               Button.init(action: {
                                                   showRectangle2.toggle()

                                               }, label: {
                                                   ZStack{

               Rectangle()
                                                           .frame(width: 66, height: 55)
                                                           .foregroundColor(Color("Color4"))
                                                           .cornerRadius(13)
                                                       VStack{
                                                   Image("image 3")
                                                           .resizable()
                                                           .frame(width: 30, height: 30)
                                                           .foregroundColor(.red)
                                                           Text("large")
                                                               .font(.caption2)
                                                               .foregroundStyle(.white)
                                                               .font(.system(size: 15, weight: .bold, design: .default))
                                                       }
                                                   }
                                               })
                                           }
             
                                   }
                HStack{
                                        Text("Less than 50*50 cm")
                                 .font(.system(size: 8, weight: .regular, design: .rounded))
                                        Text("Less than 100*100 cm")
                                  .font(.system(size: 8, weight: .regular, design: .rounded))
                                            Text("Less than 100*100 cm")
                                      .font(.system(size: 8, weight: .regular, design: .rounded))
                                        }
                ZStack{
                                       RoundedRectangle(cornerRadius: 12)
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
                ZStack{
                                           Rectangle()
                                               .frame(width: 320, height: 44)
                                               .foregroundColor(Color.mint.opacity(0.2))
                                           
                                               .cornerRadius(12)
                                       HStack(spacing:120){
                                       HStack{
                                   Image(systemName: "calendar.badge.clock")
                                               .font(.system(size: 12, weight: .regular, design: .default))
                                       .foregroundColor(Color("Color3"))
                                       Text("Schedule Your Order")
                                           .font(.system(size: 15, weight: .bold, design: .default))
                                           .foregroundColor(Color("Color3"))

                                       }
                                       Image(systemName: "chevron.right")
                                               .font(.system(size: 9, weight: .bold, design: .default))
                                               .foregroundColor(Color("Color3"))

                                       }
                                       }
                ZStack{
                                               Toggle(isOn: $checkbox2){
                                                   Text("I accept the terms & conditions")
                                               }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                                                   .foregroundStyle(.mint)
                                                   .font(.system(size: 16, weight: .semibold, design: .serif))
                                                  
                                           }
                                       NavigationLink(){
                                           offer()
                                       } label: {
                                           Text("Confirm")
                                               .font(.title3)
                                               .foregroundColor(Color.white)
                                               .frame(width: 300, height:35)
                                               .background(Color("Color3"))
                                                   .cornerRadius(5)
                                       }

          
           }
            
            
        }
    }
}

struct CheckboxToggleStyle: ToggleStyle {
        var isReversed = false
        func makeBody(configuration: Configuration) -> some
        View {
            HStack {
                if !isReversed {
                configuration.label
                }
                Button {
                    configuration.isOn.toggle()
                } label: {
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    
                    
        }
                .padding(5)
              .accentColor(Color(UIColor.label))
                if isReversed {
                    configuration.label
                }
    }

            }
    }


struct new_order_sarah2_Previews: PreviewProvider {
    static var previews: some View {
        new_order_sarah2()
    }
}
