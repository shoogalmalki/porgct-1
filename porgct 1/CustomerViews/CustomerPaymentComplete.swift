//
//  after.payment.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI

struct CustomerPaymentComplete: View {
    @State var shouldGoToWhatEverPage11: Bool = false
    @State var Sarah3: Bool = false
    @Environment(\.presentationMode) var presentationMode
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    let verticalPaddingForForm = 100.0
    var body: some View {
//        NavigationView{
            ZStack{
                ZStack{
                    Color(.systemMint)
                    
                        .ignoresSafeArea()
                }
                ZStack{
                    Rectangle()
                        .frame(width: UIScreen.main
                            .bounds.size.width, height: UIScreen.main
                        .bounds.size.height - verticalPaddingForForm)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                        .padding(.init(top: verticalPaddingForForm, leading: 0, bottom: 0, trailing: 0))
                    VStack(alignment: .center , spacing: 120){
                        VStack{
                            Image("Image16")
                                .resizable()
                                .frame(width:UIScreen.main
                                    .bounds.size.width * 0.55, height: UIScreen.main
                                    .bounds.size.height * 0.20)
                                .padding(.horizontal,(UIScreen.main
                                    .bounds.size.width * 0.50)/2)
                            Text("""
Your request has been
  submitted succefully
""")
                            .font(.system(size: 18, weight: .semibold, design: .serif))
                        }
                     
                        NavigationLink(isActive: $shouldGoToWhatEverPage11, destination: {
                            CustomerHome().navigationBarBackButtonHidden(true)
                        }, label: {
                        })
                        Button(action: {
                            shouldGoToWhatEverPage11 = true
                            //self.presentationMode.wrappedValue.dismiss()
                        }
                               , label: {

                            Text("Back to the main page")
                                .font(.system(size: 18, weight: .semibold, design: .serif))
                                .foregroundColor(Color.white)
                                .frame(width: 300, height: 50)
                                .background(Color(UIColor.systemMint))
                                .cornerRadius(10)
                                .padding(.horizontal,(UIScreen.main
                                    .bounds.size.width * 0.50)/2)


                        })
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(false)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading:
                Button(action: {
                    self.mode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "arrow.left")
                            .imageScale(.large)
                            .frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(.white)
                    }
            })
        }
    }
//}
struct CustomerPaymentComplete_Previews: PreviewProvider {
    static var previews: some View {
        CustomerPaymentComplete()
    }
}

//    NavigationLink(){
//        homeuser()
//
//    }
//        label:{
//   Text("go to home")
//}
