//
//  after.payment.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI

struct after_payment: View {
    @State var shouldGoToWhatEverPage11: Bool = false
    @State var Sarah3: Bool = false
    var body: some View {
//        NavigationView{
            ZStack{
                ZStack{
                    Color(.systemMint)
                    
                        .ignoresSafeArea()
                }
                ZStack{
                    Rectangle()
                        .frame(width: 380, height: 800)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .offset(y:58)
                    VStack(alignment: .leading , spacing: 120){
                        VStack{
                            Image("Image16")
                                .resizable()
                                .frame(width:270 , height: 190)
                                .padding(.leading,22)
                            Text("""
Your request has been 
  submitted succefully
""")
                            .font(.system(size: 18, weight: .semibold, design: .serif))
                        }
                     
                        NavigationLink(isActive: $shouldGoToWhatEverPage11, destination: {
                            Home_User()
                        }, label: {
                        })
                        Button(action: {                            shouldGoToWhatEverPage11.toggle()
                        }
                               , label: {

                            Text("Back to the main page")
                                .font(.system(size: 18, weight: .semibold, design: .serif))
                                .foregroundColor(Color.white)
                                .frame(width: 300, height: 50)
                                .background(Color(UIColor.systemMint))
                                .cornerRadius(10)


                        })
                    }
                }
            }
        }
    }
//}
struct after_payment_Previews: PreviewProvider {
    static var previews: some View {
        after_payment()
    }
}

//    NavigationLink(){
//        homeuser()
//
//    }
//        label:{
//   Text("go to home")
//}
