//
//  OrderDriver.swift
//  porgct 1
//
//  Created by May AlQusayer on 26/11/1443 AH.
//


import SwiftUI


struct OrderDriver: View {
    
    var frameworks = ["Pick Up Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    var frameworks2 = ["Drop Of Location", "Riyadh", "Jeddah", "Dammam", "Tift"]
    @State private var selectedFrameworkIndex = ""
    @State var showRectangle: Bool = false
    @State var showRectangle1: Bool = false
    @State var showRectangle2: Bool = false
    @State var shouldGoToWhatEverPage55: Bool = false
    @StateObject private var viewModel = ContentViewModel()
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType
    = .camera

    @State private var checkbox2: Bool = false

    
    @State private var image: UIImage?
//    @EnvironmentObject var appState: AppState
    
    var body: some View {
       
        NavigationView {
            ZStack {
                Color(.systemMint)
                    .ignoresSafeArea()

                ZStack{
                    Rectangle()
                        .frame(width: 380, height: 670)
                        .foregroundColor(Color("Color1"))
                        .cornerRadius(20)
                    VStack(alignment: .leading, spacing: 20){
                      
                        OrderDriver1()
                        
                    }
                   

                        
                }
                    
                 
            }
            
            }
           
          
                .navigationBarHidden(true)
            
        
    }
}

struct CheckboxToggleStyle2: ToggleStyle {
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
struct OrderDriver_Previews: PreviewProvider {
    static var previews: some View {
        OrderDriver()
    }
}
