//
//  OrderDriver.swift
//  porgct 1
//
//  Created by May AlQusayer on 26/11/1443 AH.
//


import SwiftUI


struct OrderDriver: View {
    
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
                Color(.systemMint)
                    .ignoresSafeArea()

                ZStack{
                    Rectangle()
                        .frame(width: 380, height: 670)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                    VStack(alignment: .leading, spacing: 30){
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("Color2"),lineWidth: 1)
                                .frame(width: 300, height: 60)
                                .background(.white.opacity(0.3))
                            
                            
                            HStack{
                                Image("Image4-1")
                                    .resizable()
                                    .foregroundColor(Color("Color2"))
                                    .frame(width:35, height:42)
                                
                                VStack(alignment: .leading,spacing: 1){
                                    VStack(alignment: .leading, spacing: 1){
                                        Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                                            ForEach(0 ..< frameworks.count) {
                                                Text(self.frameworks[$0])
                                            }
                                        }
                                        Divider()
                                            .frame(width: 200)
                                        
                                    }
                                    Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                                        ForEach(0 ..< frameworks2.count) {
                                            Text(self.frameworks2[$0])
                                        }
                                        
                                    }
                                }
                                
                            }
                        }.padding(.top,-90)
                        TextField("More Details (Exp: Keep away from heat...) ", text: .constant(""))
                            .font(.system(size: 13))
                            .padding()
                            .frame(width: 300, height: 90)
                        //                   .foregroundColor(Color.gray.opacity(0.2))
                            .border(.gray.opacity(0.3))
                        //             .background(Color("Color2"))
                            .background(.white.opacity(0.3))
                            .cornerRadius(5)
                            
                        ZStack{
                            Rectangle()
                                .frame(width: 300, height: 44)
                                .foregroundColor(Color.mint.opacity(0.2))
                                .cornerRadius(5)
                            HStack(spacing:70){
                                HStack{
                                    Image(systemName: "calendar.badge.clock")
                                        .font(.system(size: 12, weight: .regular, design: .default))
                                        .foregroundColor(Color("Color3"))
                                    Text("Schedule Your Order")
                                        .fontWeight(.bold)
                                        .font(.system(size: 15, weight: .semibold, design: .serif))
                                        .foregroundColor(Color("Color3"))
                                    
                                }
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 9, weight: .bold, design: .default))
                                    .foregroundColor(Color("Color3"))
                                
                            }
                        }
                        Toggle(isOn: $checkbox2){
                            Text("I accept the terms & conditions")
                        }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                            .foregroundStyle(.gray)
                            .font(.system(size: 15, weight: .semibold, design: .serif))
                        NavigationLink(){
                            after_payment()
                        } label: {
                            Text("Done")
                            //                                .font(.title3)
                                .foregroundColor(Color.white)
                                .font(.system(size: 20, weight: .semibold, design: .serif))
                                .frame(width: 300, height: 50)
                                .background(Color(UIColor.systemMint))
                                .cornerRadius(10)
                        }.padding(.bottom,66)
//                        OrderDriver1()
                        
                    }
                   

                        
                }
                    
                 
            }
            
            }
           
          
                .navigationBarHidden(true)
            
        
    }
}

struct CheckboxToggleStyle2: ToggleStyle {
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
struct OrderDriver_Previews: PreviewProvider {
    static var previews: some View {
        OrderDriver()
    }
}
