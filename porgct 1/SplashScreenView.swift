//
//  SplashScreenView.swift
//  porgct 1
//
//  Created by lama aljebreen on 23/11/1443 AH.
//


import SwiftUI

struct SplashScreenView: View {
    @State var isActive : Bool = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State var shouldGoToWhatEverPage3: Bool = false
    // Customise your SplashScreen here
    var body: some View {
        NavigationView {
            if isActive {
    //            ContentView()
                if (UserDefaults.standard.string(forKey: LOGIN_UID) ?? "") == ""{
                    pageView_onbording2()
                }else{
                    Home_User()
                }
            } else {
    //            NavigationView {
                    ZStack{
                       Rectangle()
                       .foregroundColor(.mint)
                      .clipShape(Circle())
                       .frame(width:390, height:270)
                       .offset( y: -50)

                    VStack {
                        
                            Image("Habo1")
                            .resizable()
                .frame(width: 230, height: 200, alignment: .center)
        //                        .font(.system(size: 10))
                                .foregroundColor(.red)
                            Image("fonthabo")
                                .resizable()
                                .frame(width: 330, height: 50, alignment: .bottom)
        //                    Text("Habhoob")
        //    .font(Font.custom("RoadRage-bold", size: 70))
        //            .font(.system(size: 70, weight: .bold, design: .serif))
        //                .foregroundColor(.orange.opacity(0.80))
                    
                        .scaleEffect(size)
                        .opacity(opacity)
                        .onAppear {
                            withAnimation(.easeIn(duration: 1.2)) {
                                self.size = 0.9
                                self.opacity = 1.00
                            }
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
                }
    //            }.navigationBarHidden(true)
            }
        }.navigationBarHidden(true)
    }
}
struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
