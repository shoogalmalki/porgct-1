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
                                        HStack{
                                            //                                        HStack(spacing:66){
                                            VStack(alignment: .leading){
                                                
                                                HStack{
                                                    Image(systemName: "calendar.badge.clock")
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                    
                                                    Text("Sun, June 5(8 -11AM)")
                                                        .font(.caption)
                                                        .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                    
                                                }
                                                ZStack{
                                                    RoundedRectangle(cornerRadius: 8)
                                                        .stroke(.gray,lineWidth: 1)
                                                        .frame(width: 200, height: 65)
                                                    
                                                    HStack{
                                                        
                                                        VStack{
                                                            Text("Note:")
                                                                .fontWeight(.bold)
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                            
                                                            Text("Baby walker.")
                                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                                                            
                                                        }
                                                        Image("Image9")
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
                                                        
                                                        HStack(alignment: .center){
                                                            Text("4.9")
                                                                .font(.caption)
                                                                .fontWeight(.medium)
                                                            
                                                            Image(systemName: "star.fill")
                                                                .foregroundColor(Color.orange)
                                                                .frame(width:5.0 , height: 10)
                                                            
                                                        }
                                                    }
                                                    
                                                }
                                                Text("OMER SALEH")
                                                    .font(.footnote)
                                            }
                                        }
                                        NavigationLink(){
                                            Registration2user()
                                        } label: {
                                            
                                            Text("Request")
                                                .foregroundColor(Color.white)
                                                .font(.system(size: 18, weight: .semibold, design: .serif))
                                                .frame(width: 300, height:35)
                                                .background(.orange)
                                                .cornerRadius(5)
                                        }
                                        
                                        
                                        
                                    }
                                }
                            }
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            //                            VStack(spacing:20){
                            //
                            //                                ZStack{
                            //                                    Rectangle()
                            //                                        .frame(width: 325, height:190)
                            //                                        .foregroundColor(.white)
                            //                                        .cornerRadius(15)
                            //                                    VStack{
                            //                                        Image("Image1-1")
                            //                                            .resizable()
                            //                                            .frame(width: 250, height:25)
                            //
                            //
                            //                                        HStack(spacing:190){
                            //                                            Text("Taif")
                            //                                                .font(.callout)
                            //                                                .fontWeight(.semibold)
                            //
                            //                                            Text("Riyadh")
                            //                                                .font(.footnote)
                            //                                                .fontWeight(.semibold)
                            //
                            //                                        }
                            //                                        HStack{
                            //                                            Image(systemName: "calendar.badge.clock")
                            //                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            //
                            //                                            Text("Sun, June 5(8 -11AM)")
                            //                                                .font(.caption)
                            //                                                .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            //
                            //                                        }
                            //                                        HStack(spacing:33){
                            //                                            ZStack{
                            //                                                RoundedRectangle(cornerRadius: 8)
                            //                                                    .stroke(.gray,lineWidth: 1)
                            //                                                    .frame(width: 200, height: 65)
                            //
                            //                                                HStack{
                            //
                            //                                                    VStack{
                            //                                                        Text("Note:")
                            //                                                            .fontWeight(.bold)
                            //                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            //
                            //                                                        Text("Baby walker.")
                            //                                                            .foregroundColor(Color(hue: 0.492, saturation: 0.851, brightness: 0.64))
                            //
                            //                                                    }
                            //                                                    Image("Image9")
                            //                                                }
                            //                                            }
                            //                                            VStack{
                            //                                                ZStack(alignment:.bottom){
                            //                                                    Image("Image2-1")
                            //                                                        .resizable()
                            //                                                        .frame(width: 57, height:55)
                            //
                            //                                                    ZStack(alignment: .center){
                            //                                                        Rectangle()
                            //                                                            .frame(width: 40, height:15)
                            //                                                            .cornerRadius(5)
                            //
                            //                                                            .foregroundColor(Color("Color1"))
                            //
                            //                                                        HStack(alignment: .center){
                            //                                                            Text("4.9")
                            //                                                                .font(.caption)
                            //                                                                .fontWeight(.medium)
                            //
                            //                                                            Image(systemName: "star.fill")
                            //                                                                .foregroundColor(Color.orange)
                            //                                                                .frame(width:5.0 , height: 10)
                            //
                            //                                                        }
                            //                                                    }
                            //
                            //                                                }
                            //                                                Text("OMER SALEH")
                            //                                                    .font(.footnote)
                            //                                            }
                            //                                        }
                            //                                        //                                        ZStack{
                            //
                            //
                            //
                            //                                        //                                                                                      .offset(x:120 , y: -80)
                            //
                            //                                        //
                            //                                        //                                                Image(systemName: "star.fill")
                            //                                        //                                                    .foregroundColor(Color.orange)
                            //                                        //                                                    .frame(width:10.0 , height: 22)
                            //                                        //                                                    .offset(x:95)
                            //                                        //                                                    .offset(y:-55)
                            //                                        //                                            }
                            //                                        //                                            Text("OMER SALEH")
                            //                                        //                                                .font(.footnote)
                            //                                        //                                                .offset(y:-30)
                            //                                        //                                                .offset(x:110)
                            //                                        //
                            //                                        //
                            //                                        //                                        }
                            //
                            //                                    }
                            //
                            //                                    //                                    Button(action: {
                            //                                    //
                            //                                    //                                    }, label: {
                            //                                    //                                        Text("Makee an offer")
                            //                                    //                                            .font(.callout)
                            //                                    //                                            .fontWeight(.semibold)
                            //                                    //                                            .foregroundColor(Color.white)
                            //                                    //
                            //                                    //                                    })
                            //                                    //                                    .frame(width: 220, height:25)
                            //                                    //                                    .background(.orange)
                            //                                    //                                    .cornerRadius(5)
                            //                                    //                                    .offset(y:80)
                            //                                }
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
                        new_order_sarah2()
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
                    profile1()
                })
            }
        }
        
    }
}

struct homedriver_Previews: PreviewProvider {
    static var previews: some View {
        homedriver()
    }
}
