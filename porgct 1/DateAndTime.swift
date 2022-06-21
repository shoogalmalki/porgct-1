//
//  DateAndTime.swift
//  porgct 1
//
//  Created by shoog almalki on 22/11/1443 AH.
//

import SwiftUI

struct DateAndTime: View {
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        VStack {
            DatePicker("Select a Date", selection: $selectedDate, in: Date()...,displayedComponents: .date)
                .accentColor(Color(.systemMint))
                .datePickerStyle(
    GraphicalDatePickerStyle()
                   
                )
            ZStack{
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("Color2"),lineWidth: 1)
                .frame(width: 300, height: 40)
            Menu("Select a Time") {
                Text("Between 6 :00 - 12 :00")
                Text("Between 13 :00 - 18:00")
                Text("Between 19 : 00 - 24 :00")
            }
            
            .foregroundColor(.mint)
            .font(.system(size: 16, weight: .semibold, design: .serif))
            }
        }
        }
    }


struct DateAndTime_Previews: PreviewProvider {
static var previews: some View {
    DateAndTime()
}
}
