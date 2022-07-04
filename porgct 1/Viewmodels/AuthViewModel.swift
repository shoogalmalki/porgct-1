//
//  AuthViewModel.swift
//  Habhoob
//
//  Created by sarah hemood  on 05/12/1443 AH.
//


import Foundation
import Firebase

final class AuthViewModel:ObservableObject{
    @Published var isAouthenticatting = false
    @Published var user : User?
    @Published var isLoading : Bool = false
    let users = "Users"
    
    static let shared = AuthViewModel()

    func fetchUser(){
        guard let uid = Auth.auth().currentUser?.uid  else {return}
        Firestore.firestore().collection(users).document(uid).getDocument { snapshot, _ in
            guard let data = snapshot?.data() else{
                print("No data")
                return
            }
            self.user = User(dictionary: data)
        }
    }
    
    func logInUser(email:String, password: String){
        self.showLoadingView()
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if let error = error{
                print("Faild to Login",error)
                self.hideLoadingView()
            }
            else{
                self.hideLoadingView()
                self.fetchUser()
                self.isAouthenticatting.toggle()
            }
        }
    }
    
    
    func handleSignout (){
        try? Auth.auth().signOut()
        self.isAouthenticatting.toggle()
        self.user=nil
    }
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
}

