//
//  new.order.sarah2.swift
//  Habhoob
//
//  Created by sarah hemood  on 01/12/1443 AH.
//

import SwiftUI
import KRProgressHUD


struct CustomerPlaceOrder: View, DateAndTimeSelected,LocationSelected,ShipmentItemSizeSelected {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    func shipmentItemSizeSelected(size: ShipmentItemSize){
        self.shipmentSize = size
    }
    func dateTimeSelected(date: String, time: String) {
        self.dateAndTime = "\(date) \n \(time)"
    }
    func locationSelected(pickupCity: String, dropCity: String) {
        self.pickupCity = pickupCity
        self.dropoffCity = dropCity
    }
    let verticalPaddingForForm = 100.0
    @State private var shipmentImage =  UIImage()
    @State var shipmentSize :  ShipmentItemSize = .empty
    @State var pickupCity = ""
    @State var dropoffCity = ""
    @State var shouldGoToWhatEverPage55: Bool = false
    @State var shouldGoToOfferPage: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    @State var dateAndTime = ""
    @State var gotoDateTime = false
    @State private var showImagePicker: Bool = false
    @State private var errorString = ""
    @State private var showingAlert = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    @State private var checkbox2: Bool = false
    @State private var descText = ""
    @State private var showImagePickerSheet: Bool = false
    //    @EnvironmentObject var appState: AppState
    
    var body: some View {
        
//        NavigationView
//        {

            ZStack
            {
                    ZStack
                    {
                        Color(.systemMint)
                            .ignoresSafeArea()
                    }
                    ZStack
                    {
                        Rectangle()
                            .frame(width: UIScreen.main
                                .bounds.size.width, height: UIScreen.main
                            .bounds.size.height - verticalPaddingForForm)
                            .foregroundColor(Color("Color1"))
                            .cornerRadius(20)
                            .padding(.init(top: verticalPaddingForForm, leading: 0, bottom: 0, trailing: 0))
        //                    GeometryReader { geometryWithSafeArea in
        //                                    GeometryReader { geometry in
                        ScrollView(showsIndicators: false)
                        {
                            VStack(alignment: .center, spacing: 25)
                            {
                                HStack
                                {
                                    StepsOfOrder()
                                }
                                ZStack
                                {
                                    location1(delegate: self)
                                }
                                ZStack
                                {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(Color("Color2"),lineWidth: 1)
                                        .frame(width: 280, height: 125)
                                        .background(.white)
                                    
                                    VStack {
                                        Image(uiImage: shipmentImage == UIImage() ? UIImage(named: "Plus")! : shipmentImage)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height: 50, alignment: .center)
                                            .aspectRatio(contentMode: .fill)
                                        Button("Choose Picture") {
                                            self.showImagePickerSheet = true
                                        }
                                        .actionSheet(isPresented: $showImagePickerSheet) {
                                            ActionSheet(title: Text("Select Photo"),
                                                        message: Text("Choose"), buttons: [
                                                            .default(Text("Photo Library")) {
                                                                self.showImagePicker = true
                                                                self.sourceType = .photoLibrary
                                                            },
                                                            .default(Text("Camera")) {
                                                                self.showImagePicker = true
                                                                self.sourceType = .camera
                                                            },
                                                            .cancel()
                                                        ])
                                        }.sheet(isPresented: $showImagePicker){
                                            ImagePicker(sourceType: self.sourceType, selectedImage: self.$shipmentImage)
                                            
                                        }
                                    }
                                }.cornerRadius(12)
                                
                                HStack(spacing:33)
                                {
                                    size1(delegate:self)
                                }
                                HStack
                                {
                                    size2()
                                }
                                TextField("More Details (Exp: Keep away from heat...) ", text: $descText)
                                    .font(.system(size: 13))
                                    .padding()
                                    .frame(width: 300, height: 90)
                                
                                    .border(.gray.opacity(0.3))
                                
                                    .background(.white)
                                    .cornerRadius(5)
                                NavigationLink(){
                                    DateAndTime(delegate: self)
                                } label: {
                                    ZStack
                                    {
                                        Rectangle()
                                            .frame(width: 300, height: 44)
                                            .foregroundColor(Color.mint.opacity(0.2))
                                            .cornerRadius(5)
                                        HStack(spacing:70)
                                        {
                                            HStack
                                            {
                                                Image(systemName: "calendar.badge.clock")
                                                .font(.system(size: 12, weight: .regular, design: .default))
                                                .foregroundColor(Color("Color3"))
                                                Text( dateAndTime == "" ? "Schedule Your Order" : dateAndTime)
//                                                .frame(width: .infinity, height: 50)
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
                                ZStack
                                {
                                    Toggle(isOn: $checkbox2){
                                        Text("I accept the terms & conditions")
                                            .underline()
                                    }.toggleStyle(CheckboxToggleStyle(isReversed: true))
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 15, weight: .semibold, design: .serif))
                            
                                }
                                NavigationLink(isActive: $shouldGoToOfferPage){
                                    CustomerGetOffers()
                                } label: {

                                }
                                ButtonNewOrder.onTapGesture {
                                    switch appEnvironmentType{
                                    case .development:
                                        shouldGoToOfferPage = true
                                        break
                                    case .staging:
                                        handleAction()
                                        break
                                    case .production:
                                        break
                                    }
                                    
                                }.alert(errorString, isPresented: $showingAlert) {
                                    Button("OK", role: .cancel) { }
                                }
                        }
                    }.frame(width: UIScreen.main
                                .bounds.size.width, height: UIScreen.main
                                .bounds.size.height * 0.80)
                            .padding(.init(top: verticalPaddingForForm, leading: 0, bottom: 0, trailing: 0))
//                            .offset(y:50)
//                            .padding(.top, 100)
                }
            }
//        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(false)
        .edgesIgnoringSafeArea(.bottom)
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
    private func handleAction()
    {
        if shipmentImage.size.height == 0.0{
            errorString = "Please Select Image"
            showingAlert = true
        } else if pickupCity == ""{
            errorString = "Please select pickup and dropdown location"
            showingAlert = true
        } else if dateAndTime == ""{
            errorString = "Please select date and time"
            showingAlert = true
        } else if shipmentSize == .empty{
            errorString = "Please select size"
            showingAlert = true
        } else if !checkbox2{
            errorString = "Before making order, you have to agree at terms and conditions"
            showingAlert = true
        } else if descText == ""{
            errorString = "Please write some notes"
            showingAlert = true
        } else if pickupCity == dropoffCity{
            errorString = "Please select pickup and dropdown location"
            showingAlert = true

        }
        else{
            KRProgressHUD.show(withMessage: "Please Wait...")
            var shipmentImageURL = ""
            shipmentImage.uploadMedia { url in
                shipmentImageURL = url ?? ""
                AuthViewModel().placeNewTripByCustomer(userId: (UserDefaults.standard.string(forKey: LOGIN_UID) ?? "") ?? "", pickUp: pickupCity, dropOff: dropoffCity, storagePhotoUrl: shipmentImageURL, typeOfShipment: shipmentSize, notes: descText, dateTime: dateAndTime, timeSlot: "") { userId,error in
                    KRProgressHUD.dismiss()
                    if error == nil{
                        print("userId===",userId ?? "Nothing")
                        shouldGoToOfferPage = true
                    }else{
                        print("error===",error?.localizedDescription ??  "Error Occured")
                        errorString = error?.localizedDescription ?? "Error Occured"
                        showingAlert = true
                    }
                }
            }
        }
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

struct CustomerPlaceOrder_Previews: PreviewProvider {
    static var previews: some View {
        CustomerPlaceOrder()
    }
}
