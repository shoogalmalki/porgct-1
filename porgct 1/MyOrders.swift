//
//  MyOrders.swift
//  Habhoob
//
//  Created by sarah hemood  on 08/12/1443 AH.
//

import SwiftUI

struct MyOrders: View {
    @State var showRectangle: Bool = false
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
                    if showRectangle == true {
                        ZStack{
                            MyOrders1()
                        }
                    }
                    else{
                        ZStack{
                           
                            MyOrder2()
                        }
                    }
                    
                  
             
                }
            }
        }
    }
}
struct MyOrders_Previews: PreviewProvider {
    static var previews: some View {
        MyOrders()
    }
}
