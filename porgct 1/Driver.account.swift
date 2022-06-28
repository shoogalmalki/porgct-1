//
//  Driver.account.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI
struct Driver_account: View {
//    @State var toggleIsOn: Bool = false
//    @State private var toggleIsOn = false
//    @EnvironmentObject var appState: AppState
       
            @State private var isPresented = false
        @State var toggleIsOn: Bool = false

            var body: some View {
                
                Button("Swich to driver Mode") {
                                   isPresented.toggle()
                               }
                               .fullScreenCover(isPresented: $isPresented, content: homedriver.init)
                               .foregroundColor(Color.mint)
                       
            }
        }
            
struct Driver_account_Previews: PreviewProvider {
    static var previews: some View {
        Driver_account()
    }
}
