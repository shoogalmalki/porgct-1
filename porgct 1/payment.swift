//
//  payment.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//


import SwiftUI

struct payment: View {
    @State var shouldGoToWhatEverPage77: Bool = false
    @State var showRectangle: Bool = false
    var body: some View {
        ZStack{
            Color("Color1")
//
                .ignoresSafeArea()
            
            PaymentPage()
            
        }
}
        
}
  


struct payment_Previews: PreviewProvider {
    static var previews: some View {
        payment()
    }
}
