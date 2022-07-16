//
//  DataAndTimeDriver.swift
//  Habhoob
//
//  Created by sarah hemood  on 18/12/1443 AH.
//

import SwiftUI

struct DataAndTimeDriver: View {
    @State var selectedDate: Date = Date()
    @State var buttonTitle =  "-Select a Time-"
    @State var gender = ""
    var body: some View {
        VStack {
            DatePicker("Select a Date", selection: $selectedDate, in: Date()...,displayedComponents: .date)
                .accentColor(Color(.systemMint))
                .datePickerStyle(
    GraphicalDatePickerStyle()
                   
                )
            Menu(buttonTitle){
                            
                            Button {
                                self.buttonTitle="Between 6 :00 - 12 :00"
                                self.gender="Between 6 :00 - 12 :00"
                            } label: {
                              
                                Text("Between 6 :00 - 12 :00")
                            }
                            Button {
                                self.buttonTitle="Between 13 :00 - 18:00"
                                self.gender="Between 13 :00 - 18:00"
                            } label: {
                                
                                Text("Between 13 :00 - 18:00")
                            }
                Button {
                    self.buttonTitle="Between 19 : 00 - 24 :00"
                    self.gender="Between 19 : 00 - 24 :00"
                } label: {
                    
                    Text("Between 19 : 00 - 24 :00")
                }

                        }
                         
                        .foregroundStyle(.black)
                        .font(.system(size: 18, weight: .semibold, design: .serif))
                        .frame(width: 300, height: 50)
                                        .background(.white)
                                        .cornerRadius(10)
                                        .overlay {
                                        RoundedRectangle(cornerRadius:9)
                                        .stroke(.mint, lineWidth: 2)
                                                }
        
//            ZStack{
//            RoundedRectangle(cornerRadius: 8)
//                .stroke(Color("Color2"),lineWidth: 1)
//                .frame(width: 300, height: 40)
//            Menu("Select a Time") {
//                Text("Between 6 :00 - 12 :00")
//                Text("Between 13 :00 - 18:00")
//                Text("Between 19 : 00 - 24 :00")
//            }
//
//            .foregroundColor(.mint)
//            .font(.system(size: 1, weight: .semibold, design: .serif))
//            }
            //بوتن الدن
            Spacer()
//            NavigationLink(){
//                OrderDriver()
//            } label: {
//            Button("Done") {
//
//            }
//
//            .foregroundColor(.white)
//            .font(.system(size: 18, weight: .semibold, design: .serif))
//               .frame(width: 300, height: 50)
//               .background(Color(UIColor.systemMint))
//                .cornerRadius(10)
//        }
        }

    }
}

struct DataAndTimeDriver_Previews: PreviewProvider {
    static var previews: some View {
        DataAndTimeDriver()
    }
}
