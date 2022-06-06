//
//  porgct_1App.swift
//  porgct 1
//
//  Created by shoog almalki on 28/10/1443 AH.
//

import SwiftUI
import FirebaseCore

@main
struct porgct_1App: App {
    
    init(){
    FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
