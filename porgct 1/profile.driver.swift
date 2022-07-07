//
//  profile.user.swift
//  porgct 1
//
//  Created by sarah hemood  on 19/11/1443 AH.
//


import SwiftUI

struct profile: View {
    @State var toggleIsOn: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
        ZStack{
            Rectangle()
                .frame(width: 370, height:850)
                .foregroundColor(Color("Color1"))
                .cornerRadius(15)
            
            DriverProfile()
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
struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
