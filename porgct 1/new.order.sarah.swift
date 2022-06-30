//
//  new.order.sarah.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI


struct new_order_sarah: View {
    @State var shouldGoToWhatEverPage55: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    @State private var checkbox2: Bool = false
    //    @EnvironmentObject var appState: AppState
    
    var body: some View {
        ZStack {
            Color("Color3")
                .ignoresSafeArea()
            ZStack{
                Rectangle()
                    .frame(width: 380, height: 720)
                    .foregroundColor(Color("Color1"))
                    .cornerRadius(20)
                    .offset(y:56)
//                VStack(spacing:30){
                    VStack(spacing:15){
                        HStack{
                            StepsofTrips()
                        }
                        
                        ZStack{
                            location1()

                        }
                        
                        ZStack{
                            Image1()
                        }
                        
                        VStack(spacing:9){
                            HStack(spacing:38){
                Size()
                            }
                            
                            HStack(spacing:20){
                                Text("Less than 50*50 cm")
                                    .font(.system(size: 8, weight: .regular, design: .rounded))
                                Text("Less than 100*100 cm")
                                    .font(.system(size: 8, weight: .regular, design: .rounded))
                                Text("Less than 100*100 cm")
                                    .font(.system(size: 8, weight: .regular, design: .rounded))
                            }
                        }
                        
                        
                        TextField("More Details ...(Exp: Keep away from heat.) ", text: .constant(""))
                            .font(.system(size: 12))
                            .padding()
                            .frame(width:280 , height: 88)
                            .background(Color("Color2"))
                            .cornerRadius(14)
                     
                        
                        ZStack{
                            Stru()
                        }
                        
                        
                        Toggle(isOn: $checkbox2){
                            Text("I accept the terms & conditions")
                        }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                            .foregroundStyle(.mint)
                            .font(.system(size: 15, weight: .semibold, design: .serif))

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
        .navigationBarHidden(true)
        
    }
}

struct new_order_sarah_Previews: PreviewProvider {
    static var previews: some View {
        new_order_sarah()
    }
}
//                                .border(.gray)
