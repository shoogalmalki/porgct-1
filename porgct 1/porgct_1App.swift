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
      let database = Firestore.firestore()
      
   }
   
    
    var body: some Scene {
        WindowGroup {
//            if appState.hasOnBoarded {
//                new_order_sarah()
//                    .environmentObject(appState)
//        } else {
//            Driver_account()
//                .environmentObject(appState)
//
//        }
////       ContentView()
//            Home_User()
            
            
//            Registration2user()
//            Home_User()
            
            navigationdriver()
        }
    }
}


class Manager {
//    static 
}
