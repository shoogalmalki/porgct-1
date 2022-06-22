//
//  CheckM.swift
//  Mmm
//
//  Created by May AlQusayer on 25/06/1443 AH.
//

import SwiftUI

struct Mmm: View {
    
    @State private var checkbox2: Bool = false
  
    var body: some View {
      
        VStack {
            Toggle(isOn: $checkbox2){
                Text("I accept the terms & conditions")
            }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                .foregroundStyle(.mint)
                .font(.system(size: 16, weight: .semibold, design: .serif))
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

            }
    }
    struct Mmm_Previews: PreviewProvider {
    static var previews: some View {
        Mmm()
    }
}

}
