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
        DatePicker("Select a Date", selection: $selectedDate)
            .accentColor(Color(.systemMint))
            .datePickerStyle(
GraphicalDatePickerStyle()
               
            )
    }

}
struct DateAndTime_Previews: PreviewProvider {
static var previews: some View {
    DateAndTime()
}
}
