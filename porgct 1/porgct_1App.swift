//
//  porgct_1App.swift
//  porgct 1
//
//  Created by shoog almalki on 28/10/1443 AH.
//

import SwiftUI
import Firebase
import FirebaseCore

class AppState: ObservableObject {
    @Published var hasOnBoarded: Bool
    
    init(hasOnBoarded: Bool) {
        self.hasOnBoarded = hasOnBoarded
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    
//      FirebaseApp.configure()


    return true
  }
}

@main
struct porgct_1App: App {
    @ObservedObject var appState = AppState(hasOnBoarded: false)

    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
  init(){
 FirebaseApp.configure()
   }
   
    
    var body: some Scene {
        WindowGroup {
            if appState.hasOnBoarded {
                new.order.sarah()
                    .environmentObject(appState)
        } else {
            Driver.account()
                .environmentObject(appState)

        }
//       ContentView()
//            home()
            SplashScreenView()
        }
    }
}


class Manager {
//    static 
}
