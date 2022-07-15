//
//  DoNotOffer.swift
//  Habhoob
//
//  Created by sarah hemood  on 16/12/1443 AH.
//

import SwiftUI

struct DoNotOffer: View {
    @State var Sarah5: Bool = false
    var body: some View {
        ZStack{
            ZStack{
                Color(.systemMint)
                    .ignoresSafeArea()
            }
           
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 670)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .offset(y:48)
                    VStack(spacing:30){
                        HStack{
                            ZStack{
                            }
                            ZStack{
                                Image(systemName:"shippingbox")
                                
                                RoundedRectangle (cornerRadius: 10)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.gray.opacity(0.2))
                                
                            }
                            
                            Image("Image12")
                            ZStack{
                                
                                RoundedRectangle (cornerRadius: 10)
                                    .frame(width: 40, height: 40)
                                    .foregroundColor(Color.mint)
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
                       Image(systemName: "x.circle")
                            .font(.system(size: 80))
                         Text("We Do NOT HAVE Offer Now")
                        
                        //                        .padding(200)
                    }
                    .padding(.bottom,320)
                    
                }
                
            }
    
        
    }
    
}

  
struct DoNotOffer_Previews: PreviewProvider {
    static var previews: some View {
        DoNotOffer()
    }
}
