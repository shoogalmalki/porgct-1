//
//  Sarah.tast.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI

struct Sarah_tast: View {
    var frameworks = ["Pick Up Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    var frameworks2 = ["Drop Of Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    @State private var selectedFrameworkIndex = ""
    var body: some View {
        //الزد ستاك هذي علشان الركتانقل الرماردي يكون فوق الركتانقل الاخضر
        ZStack{
            //الركتانقل الاخضر الغامق///
            ZStack{
//                Color("Color3")
                Color(Color.mint as! CGColor)
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
            //نهاية الركتانقل الاخضر الغامق///

            //الركتانقل الرمادي///
            ZStack{
            Rectangle()
                .frame(width: 380, height: 650)
                .foregroundColor(Color("Color1"))
                .cornerRadius(20)
                .offset(y:58)
                //الركتانقل الرمادي///
   
            
    //العناصر الموجوده في الصفحه مثل اللوكيشن والبوتن وغيرها
                VStack{
                ZStack{
                    Image("Image4-1")
                        .resizable()
                        .foregroundColor(Color("Color2"))
                        .frame(width:35, height:42)
                        .offset(x:-110)
                    
                    
                    Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                        ForEach(0 ..< frameworks.count) {
                            Text(self.frameworks[$0])
                        }
                        
                    }
                    
                    
                    .font(.title)
                    
                    
                    
                    .offset(x:-35,y:-11)
                    Divider()
                        .frame(width: 200)
                    Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                        ForEach(0 ..< frameworks2.count) {
                            Text(self.frameworks2[$0])
                        }
                        
                    }
                    
                    .offset(x:-33,y:15)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("Color2"),lineWidth: 1)
                            .frame(width: 300, height: 60)
                            .offset(y:-3)
                        
                    }
                }
                ZStack{
                Rectangle()
                    .frame(width: 300, height: 100)
                    .foregroundColor(.green)
                    Text("DDD")
                }
                }
                //العناصر الموجوده في الصفحه مثل اللوكيشن والبوتن وغيرها

            }
            // القوس هذا يقفل الزد ستاك حقت الركتانقل الرمادي///

        }
    }
}

struct Sarah_tast_Previews: PreviewProvider {
    static var previews: some View {
        Sarah_tast()
    }
}
