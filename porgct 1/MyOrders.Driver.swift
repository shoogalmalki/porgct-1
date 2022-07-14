//
//  MyOrders.Driver.swift
//  Habhoob
//
//  Created by sarah hemood  on 16/12/1443 AH.
//

import SwiftUI

struct MyOrders_Driver: View {
    @State var showRectangle9: Bool = false
    @State var showRectangle2: Bool = false
    var body: some View {
        ZStack{
            Color("Color1")
                .ignoresSafeArea()
            VStack{
                HStack{
                    Button(action: {}, label: {
                        Image(systemName:"chevron.backward")
                            .foregroundColor(.orange)
                            .font(.system(size: 12, weight:.bold, design: .default))
                        
                    })
                    Text("My Orders")
                }
                VStack{
                    if showRectangle9 == true {
                        ZStack{
                            MyOrdersDrive()
                        }
                    }
                    else{
                        ZStack{
                           
                            MyOrdersD()
                        }
                    }
                    
                  
             
                }
            }
        }
    }
}

struct MyOrders_Driver_Previews: PreviewProvider {
    static var previews: some View {
        MyOrders_Driver()
    }
}
