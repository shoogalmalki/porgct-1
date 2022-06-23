//
//  Sarah.tast.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI

struct Sarah_tast: View {
    var body: some View {
        ZStack{
            //الركتانقل الاخضر الغامق///
            ZStack{
                Color("Color3")
                    .ignoresSafeArea()
                HStack{
                    HStack(spacing:200){
                        
                        Button(action: {
                        }
                               , label:{
                            Image(systemName: "person.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                            
                        })
                        Button(action: {
                        }
                               , label:{
                            Image(systemName: "bell.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 23))
                            
                        })
                    }
                    
                    
                    Button(action: {
                    }
                           , label:{
                        Image(systemName: "bell.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 23))
                        
                    })
                } .padding(.bottom,630)
            }
            //الركتانقل الاخضر الغامق///

            //الركتانقل الرمادي///

            ZStack{
            Rectangle()
                .frame(width: 380, height: 650)
                .foregroundColor(Color("Color1"))
                .cornerRadius(20)
                .offset(y:58)
                //الركتانقل الرمادي///

                //الركتانقل الاخضر///
                ZStack{
                Rectangle()
                    .frame(width: 300, height: 100)
                    .foregroundColor(.green)
                    Text("DDD")
                }
                ///الركتانقل الاخضر///

            }
        }
    }
}

struct Sarah_tast_Previews: PreviewProvider {
    static var previews: some View {
        Sarah_tast()
    }
}
