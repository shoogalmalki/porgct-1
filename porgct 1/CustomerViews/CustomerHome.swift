//
//  Home.User.swift
//  porgct 1
//
//  Created by sarah hemood  on 24/11/1443 AH.
//

import SwiftUI
struct Item: Identifiable {
    var id = UUID()
    var fullName: String
}
struct CustomerHome: View {
    
    @State var shouldGoToWhatEverPage8: Bool = false
    @State var shouldGoToWhatEverPage9: Bool = false
    @State var showModelView = false
    let screenWidth = UIScreen.main.bounds.width
    let commonTopPadding = 100.0
    let commonWidth = 0.85
    let driverList:[Item] = [
//        .init(userId: "1", fullName: "Akshay1"),
//        .init(userId: "2",fullName: "Akshay2"),
//        .init(userId: "3",fullName: "Akshay3"),
//        .init(userId: "4",fullName: "Akshay4"),
//        .init(userId: "5",fullName: "Akshay5")
        .init(fullName: "Omer Salah"),
        .init(fullName: "Lama Ajibren"),
        .init(fullName: "Sarah Hemood"),
        .init(fullName: "Lama Mohammad"),
        .init(fullName: "Sarah Alsauidi")
    ]

    var body: some View {
        ZStack{
            ZStack{
                Color("Color3")
                    .ignoresSafeArea()
            }
            GeometryReader { geometry in
                VStack(spacing:20)
                {
                    ZStack(alignment: .center){
                        Rectangle()
                            .frame(width: geometry.size.width * commonWidth, height:70)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                        location1()
                    }.padding(.top,20)
                   
                    ScrollView(.vertical,showsIndicators: false)
                    {
                        ForEach(driverList,  id: \.id) { userObj in
                            VStack(spacing:20){
                                ZStack(alignment: .center){
                                    ZStack{
                                        Rectangle()
                                            .frame(width: geometry.size.width * commonWidth, height:210)
                                            .foregroundColor(.white)
                                            .cornerRadius(15)
                                        
                                        VStack( spacing: 8){
                                            Image("Image1-1")
                                                .resizable()
                                                .frame(width: geometry.size.width * (commonWidth - 0.12), height:25)
                                            HStack(spacing:35){
                                                Text("Taif")
                                                    .font(.callout)
                                                    .fontWeight(.semibold)
                                                
                                                Text("(The Offer Is 100SR)")
                                                    .font(.system(size: 12, weight: .bold ))
                                                    .foregroundColor(.black)
                                                    
                                                Text("Riyadh")
                                                    .font(.footnote)
                                                    .fontWeight(.semibold)
                                                
                                            }
                                            
                                            VStack(spacing: 5){
                                                HStack(spacing:10){
                                                    VStack(alignment: .leading, spacing: 3){
                                                        Text("Starting:")
                                                            .font(.footnote)
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                        
                                                        HStack{
                                                            Image(systemName: "calendar.badge.clock")
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                            
                                                            Text("Sun, June 5(8 -11AM)")
                                                                .font(.caption)
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                            
                                                        }
                                                        Text("Arrival:")
                                                            .font(.footnote)
                                                            .fontWeight(.regular)
                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                        
                                                        HStack{
                                                            Image(systemName: "calendar.badge.clock")
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                            
                                                            Text("Fri, June 3(8 -11AM)")
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                                .font(.caption)
                                                            
                                                        }
                                                        Spacer()
                                                    }
                                                    
                                                    Spacer()
                                                    
                                                    VStack(alignment: .trailing){
                                                        ZStack(alignment:.bottom){
                                                            Image("Image2-1")
                                                                .resizable()
                                                                .frame(width: 57, height:55)
                                                            
                                                            ZStack(alignment: .center){
                                                                Rectangle()
                                                                    .frame(width: 40, height:15)
                                                                    .cornerRadius(5)
                                                                    .foregroundColor(Color("Color1"))
                                                                
                                                                HStack(spacing:2){
                                                                    Text("4.9")
                                                                        .font(.caption)
                                                                        .fontWeight(.medium)
                                                                    
                                                                    Image(systemName: "star.fill")
                                                                        .foregroundColor(Color.orange)
                                                                        .font(.system(size: 12))
                                                                    //                                                               .frame(width:1 , height: 10)
                                                                    
                                                                }
                                                            }
                                                        }
                                                        Text("\(userObj.fullName)")
                                                            .font(.footnote)
                                                            .frame(width: geometry.size.width * 0.20, height:20)
                                                            .lineLimit(1)
                                                        Spacer()
                                                    }
                                                }
                                              
                                                NavigationLink(){
                                                    NewOrder_Request()
                                                } label: {
                                                    
                                                    Text("Request")
                                                        .foregroundColor(Color.white)
                                                        .font(.system(size: 18, weight: .semibold, design: .serif))
                                                        .frame(width: geometry.size.width * 0.75, height:35)
                                                        .background(.orange)
                                                        .cornerRadius(5)
                                                }
                                            }
                                        }
                                        .frame(width: geometry.size.width * 0.75)
                                        .padding([.top,.bottom], 10)
                                    }
                                    
                                }
                        }
                    }
                    }
//                            .frame(width: geometry.size.width, height: UIScreen.main
//                                .bounds.size.height * 0.67)
                    .frame(width: geometry.size.width, height: geometry.size.height * 0.78)
                }
//                        .frame(width:geometry.size.width * 0.60)
//                        .padding([.leading, .trailing], 20)
            }
            .background(Color("Color1")
                .cornerRadius(20))
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            .frame(maxWidth: UIScreen.main
                .bounds.size.width , maxHeight: .infinity)
            .padding(.top,commonTopPadding)
//                    .padding(.bottom,50)
      
//                    .padding([.leading,.trailing], 20)
            
            
//                    ZStack{
//                        Rectangle()
//                            .frame(width: .infinity, height: UIScreen.main
//                                .bounds.size.height - 150)
//                                .foregroundColor(Color("Color1"))
//                                .cornerRadius(20)
//                                .padding(.init(top: 50, leading: 0, bottom: 0, trailing: 0))
//                    }
            .navigationBarItems(leading:
                                    //((PROFILE.BUTTON))
            Button{
                showModelView.toggle()
            }label: {
                Image(systemName:"person.circle.fill")
                    .font(.system(size: 23))
                    .foregroundColor(showModelView ? .green : .white)
                    .padding(.top)
            },trailing:
                                    HStack(spacing:-5){
                
                
                //((BLUS.BUTTON))
//                    NavigationLink(isActive: $shouldGoToWhatEverPage9, destination: {
//                        NewRegistration()
//                    }, label: {
//                    })
                NavigationLink(isActive: $shouldGoToWhatEverPage9, destination: {
//                        Registration2user()
                    
                    if (UserDefaults.standard.string(forKey: LOGIN_UID) ?? "") == ""{
                        Login()
                    }else{
                        CustomerPlaceOrder()
                    }
                    
                }, label: {

                })
                
                Button(action: {
                    print("Loggin ID=====",UserDefaults.standard.string(forKey: LOGIN_UID) ?? "")
                    shouldGoToWhatEverPage9.toggle()
                }
                       , label:{
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 23))
                })
                
                
                //((BELL.BUTTON))
                NavigationLink(isActive: $shouldGoToWhatEverPage8, destination: {
//                        NavigationUser()
                }, label: {
                    
                })
                Button(action: {
                    shouldGoToWhatEverPage8.toggle()
                }
                       , label:{
                    Image(systemName: "bell.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 23))
                    
                })
            }.padding(.top)
                                
            )
            //((SHEET))
            .sheet(isPresented:$showModelView , content:
                    {
                CustomerProfile()
            })
        }
        .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(false)
        .onAppear {
//                        getDriverTrips()
        }
            
    }
}


struct CustomerHome_Previews: PreviewProvider {
    static var previews: some View {
        CustomerHome()
    }
}



///

