//
//  profile.user.swift
//  porgct 1
//
//  Created by sarah hemood  on 19/11/1443 AH.
//

import SwiftUI

struct profile1: View {
    @State var toggleIsOn: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
        ZStack{
           Color("Color1")
                .ignoresSafeArea()
            
            UserProfile()
}
         
        .navigationTitle("profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(leading:
Button{
            presentationMode.wrappedValue
                .dismiss()
        }label: {
            Image(systemName:"x.circle.fill")
        })
}
}
}
struct profile1_Previews: PreviewProvider {
    static var previews: some View {
        profile1()
    }
}
