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
                
                        HStack {
                        
                            if toggleIsOn {
                Button("Swich to driver Mode") {
                    isPresented.toggle()

                }
                .padding(.leading, 14.0)
                .foregroundColor(Color.mint)
                    .fullScreenCover(isPresented: $isPresented, content: homedriver.init)
                    
                        }
                            Toggle(
                            isOn: $toggleIsOn,
                            label: {
                                Text("")
                            })
                            .toggleStyle(SwitchToggleStyle(tint: Color.mint))
                            .padding()
                                    
                       
            }
        }
            }
struct Driver_account_Previews: PreviewProvider {
    static var previews: some View {
        Driver_account()
    }
}
