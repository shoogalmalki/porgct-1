//
//  navigationdriver.swift
//  porgct 1
//
//  Created by sarah hemood  on 20/11/1443 AH.
//

import SwiftUI


struct navigationdriver: View {
    @State var shouldGoToWhatEverPage12: Bool = false
    
    var body: some View {
        
        ZStack{
            ZStack{
                Color("Color3")
                    .ignoresSafeArea()
            }
            
            ZStack{
                Rectangle()
                    .frame(width: .infinity, height: 670)
                    .foregroundColor(Color("Color1"))
                    .cornerRadius(20)
                    .offset(y:48)

           
               
                ScrollView(.vertical,showsIndicators: false) {
                VStack{
                       
                            NavigationDriverCard()
//
                       .padding(.top,77)
                    NavigationDriverCard()
                    
                }
                }
              
            }
        }
        }
    }
    
    
    



struct navigationdriver_Previews: PreviewProvider {
    static var previews: some View {
        navigationdriver()
    }
}
