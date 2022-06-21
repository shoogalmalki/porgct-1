//
//  porgct_1App.swift
//  porgct 1
//
//  Created by shoog almalki on 28/10/1443 AH.
//

import SwiftUI
import Firebase
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    
//      FirebaseApp.configure()


    return true
  }
}

@main
struct porgct_1App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
  init(){
 FirebaseApp.configure()
   }
   
    
    var body: some Scene {
        WindowGroup {
//       ContentView()
            home()
        }
    }
}


class Manager {
//    static 
}
