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
//        NavigationView{
        ZStack{
            Color("Color1")
                .ignoresSafeArea()
            VStack{
//                HStack{
//                    Button(action: {}, label: {
//                        Image(systemName:"chevron.backward")
//                            .foregroundColor(.orange)
//                            .font(.system(size: 12, weight:.bold, design: .default))
//                        
//                    })
//                    Text("My Orders")
//                }
                ScrollView(.vertical,showsIndicators: false) {

                VStack{
                    if showRectangle == true {
                        ZStack{
                            Rectangle()
                                .frame(width:300 , height: 250 )
                                .cornerRadius(8)
                                .foregroundColor(.white)
                            
                            VStack(alignment: .center){
                                
                                HStack(alignment: .top){
                                    Image(systemName:"stopwatch")
                                        .foregroundColor(.orange)
                                        .font(.system(size: 12, weight:.bold, design: .default))
                                    HStack(spacing:70){
                                        
                                        Text("IN PROGRESS")
                                            .font(.system(size: 10, weight: .bold, design: .default))
                                            .foregroundColor(.orange)
                                        VStack(alignment: .trailing){
                                            Button.init(action: {
                                                showRectangle.toggle()
                                                
                                            }, label: {
                                                ZStack{
                                                    
                                                    Image(systemName: "chevron.up")
                                                }
                                            })
                                            
                                            Text("Fri, June, 2022 8:00 PM")
                                                .font(.system(size: 10, weight: .bold, design: .default))                    .fontWeight(.regular)
                                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.611))
                                        }
                                    }
                                }
                                Divider()
                                    .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                    .frame(width:300)
                                Text("Order Number : 237")
                                    .font(.system(size: 14, weight:.bold, design: .default))
                                    .foregroundColor(Color("Color3"))
                                    .offset(x:-70)
                                Divider()
                                    .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                    .opacity(0.3)
                                    .frame(width:300)
                                VStack(alignment: .leading){
                                    Text("SHIPPING PROGRESS")
                                        .font(.system(size: 9, weight:.regular, design: .default))
                                    HStack(alignment: .top){
                                        Text("Out for Delivery")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            
                                        
                                        Text("- 3 days shipping")
                                            .font(.caption2)
                                            .foregroundColor(.gray)
                                            
                                        
                                        Divider()
                                            .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                        
                                            .frame(height:40)
                                            .offset(y:-20)
                                           
                                        VStack{
                                            Text("The amount ")
                                                .font(.caption2)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color(hue: 1.0, saturation: 0.018, brightness: 0.664))
                                                .offset(y:-20)
                                            Text("$80.58")
                                                .font(.caption)
                                                .offset(y:-20)
                                            
                                        }
                                        
                                    }
                                    
                                }
                                Divider()
                                    .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                    .opacity(0.3)
                                    .frame(width:300)
                                    .offset(y:-17)
                                Image("Image1-1")
                                    .resizable()
                                    .frame(width: 260, height: 28)
                                
                                HStack(spacing:220){
                                    Text("Taif")
                                        .font(.system(size: 10, weight:.bold, design: .default))
                                 
                                    Text("Riyadh")
                                        .font(.system(size: 10, weight:.bold, design: .default))
                                  
                                    
                                }
                                Divider()
                                    .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                    .opacity(0.3)
                                    .frame(width:300)
                                
                               
                                HStack{
                                Text("complete the payment")
                                        .font(.system(size:12))
                                NavigationLink(){
                                    payment_order()
                                } label: {
                                    
                                    Text("Request")
                                        .foregroundColor(Color.white)
                                        .font(.system(size: 10, weight: .semibold, design: .serif))
                                        .frame(width: 50, height:30)
                                        .background(.orange)
                                        .cornerRadius(5)
                                
                                }
                                
                                }
                                
                                
                                
                            }
                        }
                    }
                    else{
                        ZStack{
                            //                    showRectangle.toggle()
                            //                    ("(showRectangle.description)")
                            Rectangle()
                                .frame(width:300 , height: 125)
                                .cornerRadius(8)
                                .foregroundColor(.white)
                            VStack{
                                HStack{
                                    Image(systemName:"stopwatch")
                                        .foregroundColor(.orange)
                                        .font(.system(size: 12, weight:.bold, design: .default))
                                    HStack(spacing:70){
                                        
                                        Text("IN PROGRESS")
                                            .font(.system(size: 10, weight: .bold, design: .default))
                                            .foregroundColor(.orange)
                                        VStack(alignment: .trailing){
                                            Button.init(action: {
                                                showRectangle.toggle()
                                                
                                            }, label: {
                                                    
                                                    Image(systemName: "chevron.down")
                                                
                                            })
                                            
                                            Text("Fri, June, 2022 8:00 PM")
                                                .font(.system(size: 10, weight: .bold, design: .default))                    .fontWeight(.regular)
                                                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.611))
                                        }
                                    }
                                }
                                Divider()
                                    .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                    .frame(width:300)
                                Text("Order Number : 237")
                                    .font(.system(size: 18, weight:.bold, design: .default))
                                    .foregroundColor(Color("Color3"))
                                    .offset(x:-60)
                                Divider()
                                    .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                    .opacity(0.3)
                                    .frame(width:300)
                                HStack{
                                    Text("Out for Delivery")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                  
                                    
                                    Text("- 3 days shipping")
                                        .font(.caption2)
                                        .foregroundColor(.gray)
                  
                                    
                                    Divider()
                                        .background(Color(hue: 0.961, saturation: 0.0, brightness: 1.0))
                                    
                                        .frame(height:30)
                                 
                                    VStack{
                                        Text("The amount ")
                                            .font(.caption2)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color(hue: 1.0, saturation: 0.018, brightness: 0.664))
                                        Text("$80.58")
                                            .font(.caption)
                                        
                                    }
                                    
                                }
                            }
                        }
                    }
                    
                }
                
                }
//                }
            }
//        .navigationTitle("MyOrders")
//        .navigationBarTitleDisplayMode(.inline)
        }
    }
}
struct MyOrders_Previews: PreviewProvider {
    static var previews: some View {
        MyOrders()
    }
}
