//
//  CheckM.swift
//  Mmm
//
//  Created by May AlQusayer on 25/06/1443 AH.
//

import SwiftUI

struct Mmm: View {
    @State private var checkbox1: Bool = false
    @State private var checkbox2: Bool = false
    var body: some View {
        VStack {
            Toggle(isOn: $checkbox1){
                Text("Checkbox1")
            }.toggleStyle(CheckboxToggleStyle())
            Toggle(isOn: $checkbox2){
                Text("Checkbox2")
            }.toggleStyle(CheckboxToggleStyle(isReversed: true))
    }.padding()

}
    struct CheckboxToggleStyle: ToggleStyle {
        var isReversed = false
        func makeBody(configuration: Configuration) -> some
        View {
            HStack {
                if !isReversed {
                configuration.label
                }
                Button {
                    configuration.isOn.toggle()
                } label: {
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    
                    
        }
                .padding(5)
              .accentColor(Color(UIColor.label))
                if isReversed {
                    configuration.label
                }
    }
//            ZStack {
//               Image(systemName: "rectangle")
//                    .foregroundColor(.gray)
//                Image(systemName: "checkmark")
//                    .resizable()
//                    .frame(width: 20, height: 20)
//                    .foregroundColor(Color(red: 0.414, green: 0.769, blue: 0.644))
//            }
            }
    }
    struct Mmm_Previews: PreviewProvider {
    static var previews: some View {
        Mmm()
    }
}

}
