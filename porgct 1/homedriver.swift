//
//  homeuser.swift
//  porgct 1
//
//  Created by sarah hemood  on 20/11/1443 AH.
//

import SwiftUI


struct homedriver: View {
    
    @State var shouldGoToWhatEverPage8: Bool = false
    @State var shouldGoToWhatEverPage9: Bool = false
    @State var showModelView = false
    //    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView{
            ZStack{
                ZStack{
                    Color("Color3")
                        .ignoresSafeArea()
                }
                
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: 670)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                    
                    VStack(spacing:22){
                        ZStack{
                            location1()
                            
                        }.padding()
                        ScrollView(.vertical,showsIndicators: false) {
                            
                            ZStack{
                                Rectangle()
                                    .frame(width: 325, height:200)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)

                                VStack( spacing: 3){
                                    Image("Image1-1")
                                        .resizable()
                                        .frame(width: 250, height:25)
                                    HStack(spacing:190){
                                        Text("Taif")
                                            .font(.callout)
                                            .fontWeight(.semibold)

                                        Text("Riyadh")
                                            .font(.footnote)
                                            .fontWeight(.semibold)

                                    }
                                    VStack(spacing: 8){
                                        HStack(spacing:35){
                                            //                                        HStack(spacing:66){
                                            VStack(alignment: .leading){

                                                HStack{
                                                    Image(systemName: "calendar.badge.clock")
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                        .font(.system(size:12))
                                                    Text("Sun, June 5(8 -11AM)")
//                                                        .font(.caption)
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                        .font(.system(size:12))

                                                }
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .stroke(.gray,lineWidth: 1)
                                                        .frame(width: 160, height: 65)

                                                    HStack(spacing:15){

                                                        VStack(spacing:15){
                                                            Text("Note:")
                                                                .font(.system(size: 15, weight: .bold, design: .rounded))
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))

                                                            Text("Baby walker.")
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                                .font(.system(size:14))


                                                        }
                                                        Image("Image9")
                                                            .resizable()
                                                            .frame(width: 55, height: 55)
                                                    }
                                                }

                                            }
                                            VStack{
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
                                                Text("OMER SALEH")
                                                    .font(.footnote)
                                            }
                                        }
                                        NavigationLink(){
                                            Registration()
                                        } label: {

                                            Text("Make an Offer")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 18, weight: .semibold, design: .serif))
                                                .frame(width: 290, height:35)
                                                .background(.orange)
                                                .cornerRadius(5)
                                        }

                                    }
                                }
                            }
//                            ZStack{
//                                Rectangle()
//                                    .frame(width: 320, height:250)
//                                    .foregroundColor(.white)
//                                    .cornerRadius(10)
//                                VStack(spacing:6){
//                                ZStack{
//                                    Rectangle()
//                                        .frame(width: 310, height:30)
//                                        .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.955))
//                                        .cornerRadius(10)
//                                    Text(" We have new order please make your offer ")
//                                    .font(.system(size: 14, weight: .semibold, design: .rounded))
//                                    .foregroundColor(.black)
//                                }
//
//                                    Image("Image1-1")
//                                        .resizable()
//                                        .frame(width: 250, height:25)
//                                    HStack(spacing:190){
//                                        Text("Taif")
//                                            .font(.callout)
//                                            .fontWeight(.semibold)
//                                        Text("Riyadh")
//                                            .font(.footnote)
//                                            .fontWeight(.semibold)
//                                    }
//
//                                    HStack(spacing:33){
//                                        VStack(alignment: .leading){
//                                            HStack{
//                                                Image(systemName: "calendar.badge.clock")
//                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                                    .font(.system(size: 12))
//                                                Text("Sun, June 5(8 -11AM)")
//                                                    .font(.system(size: 11))
//
//                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            }
//
//                                            ZStack{
//                                                RoundedRectangle(cornerRadius: 8)
//                                                    .stroke(.gray,lineWidth: 1)
//                                                    .frame(width: 160, height: 65)
//
//                                                HStack(spacing:15){
//
//                                                    VStack(spacing:15){
//                                                        Text("Note:")
//                                                            .font(.system(size: 15, weight: .bold, design: .rounded))
//                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//
//                                                        Text("Baby walker.")
//                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                                            .font(.system(size:14))
//
//
//                                                    }
//                                                    Image("Image9")
//                                                        .resizable()
//                                                        .frame(width: 55, height: 55)
//                                                }
//                                            }
//                                        }
//                                        VStack{
//                                            ZStack(alignment:.bottom){
//                                                Image("Image2-1")
//                                                    .resizable()
//                                                    .frame(width: 57, height:55)
//
//                                                ZStack{
//                                                    Rectangle()
//                                                        .frame(width: 40, height:15)
//                                                        .cornerRadius(5)
//                                                        .foregroundColor(Color("Color1"))
//
//                                                    HStack(spacing:4){
//                                                        Text("4.9")
//                                                            .font(.caption)
//                                                            .fontWeight(.medium)
//
//                                                        Image(systemName: "star.fill")
//                                                            .foregroundColor(Color.orange)
//                                                            .frame(width:10.0 , height: 22)
//                                                            .font(.system(size: 12))
//                                                    }
//                                                }
//
//                                            }
//                                            Text("OMER SALEH")
//                                                .font(.footnote)
//
//                                        }
//
//                                    }
//                                    HStack{
//                                        Button(action: {}, label: {
//                                            Text("Accept")
//                                                .font(.callout)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(Color.white)
//
//                                        })
//                                        .frame(width: 140, height:30)
//                                        .background(.green)
//                                        .cornerRadius(5)
//
//
//                                        Button(action: {}, label: {
//                                            Text("Decline")
//                                                .font(.callout)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(Color.white)
//
//                                        })
//                                        .frame(width: 140, height:30)
//                                        .background(.red)
//                                        .cornerRadius(5)
//
//                                    }
//                                }
//
//        //                            NavigationDriverCard()
//
//        //                       .padding(.top,77)
//
//                            }
//                            ZStack{
//                                Rectangle()
//                                    .frame(width: 320, height:200)
//                                    .foregroundColor(.white)
//                                    .cornerRadius(10)
//                                VStack(spacing:6){
//
//                                    ZStack{
//                                        Rectangle()
//                                            .frame(width: 310, height:30)
//                                            .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.955))
//                                            .cornerRadius(10)
//                                        Text(" You have a request from your scheduled trip ")
//                                        .font(.system(size: 14, weight: .semibold, design: .rounded))
//                                        .foregroundColor(.black)
//                                    }
//
//                                    Image("Image1-1")
//                                        .resizable()
//                                        .frame(width: 250, height:25)
//                                    HStack(spacing:190){
//                                        Text("Taif")
//                                            .font(.callout)
//                                            .fontWeight(.semibold)
//                                        Text("Riyadh")
//                                            .font(.footnote)
//                                            .fontWeight(.semibold)
//                                    }
//
//                                    HStack(spacing:33){
//                                        VStack(alignment: .leading){
//                                            HStack{
//                                                Image(systemName: "calendar.badge.clock")
//                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                                    .font(.system(size: 12))
//                                                Text("Sun, June 5(8 -11AM)")
//                                                    .font(.system(size: 11))
//
//                                                    .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                            }
//
//                                            ZStack{
//                                                RoundedRectangle(cornerRadius: 8)
//                                                    .stroke(.gray,lineWidth: 1)
//                                                    .frame(width: 160, height: 65)
//
//                                                HStack(spacing:15){
//
//                                                    VStack(spacing:15){
//                                                        Text("Note:")
//                                                            .font(.system(size: 15, weight: .bold, design: .rounded))
//                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//
//                                                        Text("Baby walker.")
//                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
//                                                            .font(.system(size:14))
//
//
//                                                    }
//                                                    Image("Image9")
//                                                        .resizable()
//                                                        .frame(width: 55, height: 55)
//                                                }
//                                            }
//                                        }
//                                        VStack{
//                                            ZStack(alignment:.bottom){
//                                                Image("Image2-1")
//                                                    .resizable()
//                                                    .frame(width: 57, height:55)
//
//                                                ZStack{
//                                                    Rectangle()
//                                                        .frame(width: 40, height:15)
//                                                        .cornerRadius(5)
//                                                        .foregroundColor(Color("Color1"))
//
//                                                    HStack(spacing:4){
//                                                        Text("4.9")
//                                                            .font(.caption)
//                                                            .fontWeight(.medium)
//
//                                                        Image(systemName: "star.fill")
//                                                            .foregroundColor(Color.orange)
//                                                            .frame(width:10.0 , height: 22)
//                                                            .font(.system(size: 12))
//                                                    }
//                                                }
//
//                                            }
//                                            Text("OMER SALEH")
//                                                .font(.footnote)
//
//                                        }
//
//                                    }
//                                    HStack{
//                                        Button(action: {}, label: {
//                                            Text("Accept")
//                                                .font(.callout)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(Color.white)
//
//                                        })
//                                        .frame(width: 140, height:30)
//                                        .background(.green)
//                                        .cornerRadius(5)
//
//
//                                        Button(action: {}, label: {
//                                            Text("Decline")
//                                                .font(.callout)
//                                                .fontWeight(.semibold)
//                                                .foregroundColor(Color.white)
//
//                                        })
//                                        .frame(width: 140, height:30)
//                                        .background(.red)
//                                        .cornerRadius(5)
//
//                                    }
//                                }
//
//        //                            NavigationDriverCard()
//
//        //                       .padding(.top,77)
//
//                            }
                         
                        }
                    }
                }
                
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
                    NavigationLink(isActive: $shouldGoToWhatEverPage9, destination: {
                        OrderDriver()
                    }, label: {
                    })
                    
                    Button(action: {
                        shouldGoToWhatEverPage9.toggle()
                    }
                           , label:{
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 23))
                    })
                    
                    
                    //((BELL.BUTTON))
                    NavigationLink(isActive: $shouldGoToWhatEverPage8, destination: {
                        navigationdriver()
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
                    profile()
                })
            }
        }
        ///Start here

        .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            .edgesIgnoringSafeArea(.bottom)
            .navigationBarItems(leading:
                Button(action: {
    //                            self.presentationMode.wrappedValue.dismiss()
//                    self.mode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "arrow.left")
                            .imageScale(.large)
                            .frame(width: 25, height: 25, alignment: .center)
        //                    .aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                    }
            })
        
    }
}

struct homedriver_Previews: PreviewProvider {
    static var previews: some View {
        homedriver()
    }
}
