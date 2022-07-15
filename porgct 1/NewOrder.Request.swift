//
//  NewOrder.Request.swift
//  Habhoob
//
//  Created by sarah hemood  on 16/12/1443 AH.
//

import SwiftUI

struct NewOrder_Request: View {
    @State var shouldGoToWhatEverPage55: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    
    
    @State private var sourceType: UIImagePickerController.SourceType
    = .camera
    @State private var checkbox3: Bool = false
    var body: some View {
        ZStack{
            ZStack{
                Color(.systemMint)
                    .ignoresSafeArea()
            }
           
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 690)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .offset(y:48)
            
                    VStack(alignment: .center, spacing: 25){
           
            ZStack{
                location1()
            }
            ZStack{
                image1()
                
            }
          
                HStack(spacing:33){
                    size1()
                    
                }
                HStack{
                    size2()
                }
                textfield()
                ZStack{
                    Schedule()
                }
                ZStack{
                    Toggle(isOn: $checkbox3){
                        Text("I accept the terms & conditions")
                    }.toggleStyle(CheckboxToggleStyle1(isReversed: true))
                        .foregroundStyle(.gray)
                        .font(.system(size: 15, weight: .semibold, design: .serif))
                    
                }
                        ButtonNewOrderR
                            
                
            }.padding(.top,70)
          
        }
    }
    }
}
struct CheckboxToggleStyle1: ToggleStyle {
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
struct NewOrder_Request_Previews: PreviewProvider {
    static var previews: some View {
        NewOrder_Request()
    }
}
