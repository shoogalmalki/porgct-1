//
//  after.payment.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI

struct after_payment: View {
    @State var shouldGoToWhatEverPage11: Bool = false

    var body: some View {
        VStack{
        Image("Image16")
            .resizable()
            .frame(width: 300, height: 400)
        
            NavigationLink(){
                homeuser()
                
            }
                label:{
           Text("go to home")
        }
        }
    }
}

struct after_payment_Previews: PreviewProvider {
    static var previews: some View {
        after_payment()
    }
}
