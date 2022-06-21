//
//  MyMap.swift
//  porgct 1
//
//  Created by shoog almalki on 22/11/1443 AH.
//

import MapKit
import SwiftUI

struct MyMap: View {
  @StateObject private var viewModel = ContentViewModel()
        
        var body: some View {
            Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
          
                .ignoresSafeArea()
                .accentColor(Color(.systemMint))
                .onAppear {
                    viewModel.checkIfLocationServicesIsEnabled()
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyMap()
    }
}
