//
//  new.order.sarah2.swift
//  Habhoob
//
//  Created by sarah hemood  on 01/12/1443 AH.
//

import SwiftUI


struct new_order_sarah2: View {
    
    @State var shouldGoToWhatEverPage55: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    
    
    @State private var sourceType: UIImagePickerController.SourceType
    = .camera
    @State private var checkbox2: Bool = false
    
    //    @EnvironmentObject var appState: AppState
    
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
            
                    VStack(alignment: .center, spacing: 10){
            HStack{
                
                StepsOfOrder()
            }
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
                        NavigationLink(){
                            DateAndTime()
                        } label: {
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
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .foregroundColor(Color("Color3"))
                            
                        }
                        Image(systemName: "chevron.right")
                            .font(.system(size: 9, weight: .bold, design: .default))
                            .foregroundColor(Color("Color3"))
                        
                    }
                
//                    Schedule()
                }
                    }
                ZStack{
                    Toggle(isOn: $checkbox2){
                        Text("I accept the terms & conditions")
                            .underline()
                    }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                        .foregroundStyle(.gray)
                        .font(.system(size: 15, weight: .semibold, design: .serif))
                    
                }
                ButtonNewOrder
                
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
