//
//  Driver.account.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI
struct Driver_account: View {
//    @State var toggleIsOn: Bool = false
    @EnvironmentObject var appState: AppState
    var body: some View {
        VStack {

//        Toggle(
//        isOn: $toggleIsOn,
//        label: {
//            Text("Swich to driver view")
//        })
//        .toggleStyle(SwitchToggleStyle(tint: Color.mint))
//        .padding(20)
//
//
//            HStack {
//                Text("Status:")
//                Text(toggleIsOn ? "Driver" : "User")
//                    .font(.headline)
//            }
            HStack {
                Text("Swich to driver view")
            
            Button {
                
//                appState.hasOnBoarded = true
            } label: {
                Image(systemName: "car.circle.fill")
                    .foregroundColor(.mint)
            }
            }
        }

    }
}

struct Driver_account_Previews: PreviewProvider {
    static var previews: some View {
        Driver_account()
    }
}
