//
//  new.order.sarah2.swift
//  Habhoob
//
//  Created by sarah hemood  on 01/12/1443 AH.
//

import SwiftUI
import KRProgressHUD


struct new_order_sarah2: View, DateAndTimeSelected,LocationSelected {
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    
    func dateTimeSelected(date: String, time: String) {
        self.dateAndTime = "\(date) - \(time)"
    }
    func locationSelected(pickupCity: String, dropCity: String) {
        self.pickupCity = pickupCity
        self.dropoffCity = dropCity
    }
    
    @State var pickupCity = ""
    @State var dropoffCity = ""
    @State var shouldGoToWhatEverPage55: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    @State var dateAndTime = ""
    @State var gotoDateTime = false
    @State private var showImagePicker: Bool = false
    @State private var errorString = ""
    @State private var showingAlert = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var checkbox2: Bool = false
    //    @EnvironmentObject var appState: AppState
    
    var body: some View {
        NavigationView{

        ZStack{
            ZStack{
                Color(.systemMint)
                    .ignoresSafeArea()
                
            }
           
                ZStack{
                    Rectangle()
                        .frame(width: .infinity, height: UIScreen.main
                            .bounds.size.height - 75)
                            .foregroundColor(Color("Color1"))
                            .cornerRadius(20)
                            .padding(.init(top: 50, leading: 0, bottom: 0, trailing: 0))
//                    GeometryReader { geometryWithSafeArea in
//                                    GeometryReader { geometry in
                    ScrollView{
        VStack(alignment: .center, spacing: 25){
            HStack{
                
                StepsOfOrder()
            }
            ZStack{
                location1(delegate: self)
            }
            ZStack{
                image1()
                
            }.cornerRadius(12)
          
                HStack(spacing:33){
                    size1()
                    
                }
                HStack{
                    size2()
                }
                textfield()
                        
                        NavigationLink(){
//                            DateAndTime()
                            DateAndTime(delegate: self)
                            
                        } label: {
                ZStack{
                    
                    Rectangle()
                        .frame(width: 300, height: 44)
                        .foregroundColor(Color.mint.opacity(0.2))
                        .cornerRadius(5)
                    HStack(spacing:70){
                        HStack{
                            Image(systemName: "calendar.badge.clock")
                                .font(.system(size: 12, weight: .regular, design: .default))
                                .foregroundColor(Color("Color3"))
                            Text( dateAndTime == "" ? "Schedule Your Order" : dateAndTime)
                                .font(.system(size: 15, weight: .bold, design: .default))
                                .foregroundColor(Color("Color3"))
                            
                        }
                        Image(systemName: "chevron.right")
                            .font(.system(size: 9, weight: .bold, design: .default))
                            .foregroundColor(Color("Color3"))
                        
                    }
                
//                    Schedule()
                }
                    }
                ZStack{
                    Toggle(isOn: $checkbox2){
                        Text("I accept the terms & conditions")
                            .underline()
                    }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                        .foregroundStyle(.gray)
                        .font(.system(size: 15, weight: .semibold, design: .serif))
                    
                }
                        ButtonNewOrder.onTapGesture {
                            
//                            if image.size.height == 0.0{
//                                errorString = "Please Select Image"
//                                showingAlert = true
//                            } else if pickupCity == ""{
//                                errorString = "Please select pickup and dropdown location"
//                                showingAlert = true
//                            } else if dateAndTime == ""{
//                                errorString = "Please select date and time"
//                                showingAlert = true
//                            } else if size == .empty{
//                                errorString = "Please select size"
//                                showingAlert = true
//                            } else if !checkbox2{
//                                errorString = "Before making order, you have to agree at terms and conditions"
//                                showingAlert = true
//                            } else if desc == ""{
//                                errorString = "Please write some notes"
//                                showingAlert = true
//                            } else if pickupCity == dropDownLocation{
//                                errorString = "Please select pickup and dropdown location"
//                                showingAlert = true
//
//                            }
//                            else{
                                KRProgressHUD.show(withMessage: "Please Wait...")
                                AuthViewModel().placeNewTripByCustomer(userId: (UserDefaults.standard.string(forKey: LOGIN_UID) ?? "") ?? "", pickUp: "", dropOff: "", storagePhotoUrl: "", typeOfShipment: "", notes: "", dateTime: "", timeSlot: "") { userId,error in
                                    KRProgressHUD.dismiss()
                                    if error == nil{
                                        print("userId===",userId ?? "Nothing")
                                    }else{
                                        print("error===",error?.localizedDescription ??  "Error Occured")
                                        errorString = error?.localizedDescription ?? "Error Occured"
                                        showingAlert = true
                                    }
                                }
//                            }
                            
                            
                            
                            
                        }.alert(errorString, isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                        
                
        }.padding(.top, 50)
        }.frame(width: .infinity, height: UIScreen.main
                        .bounds.size.height - 150)
                    
//                    Blur(style:  .systemThinMaterialLight)
//                                    .mask(
//                                        VStack(spacing: 0) {
//                                            Rectangle()
//                                                .frame(width: 0, height: 0)
//                                                .padding(.top, 0)
//                                            Spacer()
//                                        }
//                                    )
//                                    .allowsHitTesting(false)
//                                    }.edgesIgnoringSafeArea(.all)
//
//                    }
        
        }
    }
        }
        .navigationBarBackButtonHidden(true)
//        .navigationBarHidden(false)
        .edgesIgnoringSafeArea(.top)
        .navigationBarItems(leading:
            Button(action: {
//                            self.presentationMode.wrappedValue.dismiss()
                self.mode.wrappedValue.dismiss()
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

struct new_order_sarah2_Previews: PreviewProvider {
    static var previews: some View {
        new_order_sarah2()
    }
}
