//
//  DateAndTime.swift
//  porgct 1
//
//  Created by shoog almalki on 22/11/1443 AH.
//

import SwiftUI

struct DateAndTime: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    public var delegate: DateAndTimeSelected?
    @State var selectedDate: Date = Date()
    @State var buttonTitle =  "-Select a Time-"
    @State var errorString = ""
    @State var showAlert = false

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
            Button("Done") {
                if buttonTitle == "-Select a Time-"{
                    errorString = "Please select time"
                    showAlert = true
                }
                else{
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
                    let strDate = dateFormatter.string(from: selectedDate)
                    delegate?.dateTimeSelected(date: strDate, time: buttonTitle)
                    self.presentationMode.wrappedValue.dismiss()
                }
                
            }
            .font(.system(size: 20, weight: .semibold, design: .serif))
            .foregroundColor(Color.white)
            .frame(width: 300, height: 50)
            .background(Color(UIColor.systemMint))
            .cornerRadius(10)
            .alert(errorString, isPresented: $showAlert, actions: {
                Button("OK", role: .cancel) { }
            })
//            NavigationLink(){
//                new_order_sarah2()
//            } label: {
//        }
        }
        }
    }


struct DateAndTime_Previews: PreviewProvider {
static var previews: some View {
    DateAndTime()
}
}
protocol DateAndTimeSelected{
    func dateTimeSelected(date: String, time: String)
}
