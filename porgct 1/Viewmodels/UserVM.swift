//
//  Viewmodel.swift
//  Habhoob
//
//  Created by sarah hemood  on 05/12/1443 AH.
//



import Foundation
import SwiftUI
import Firebase

final class ProfileViewModel : ObservableObject{
    
    @Published var fullName : String = ""
    @Published var password : 	String = ""
    @Published var avatarImage = Image("default-avatar")
   
    @Published var isShowingImagePicker = false
    @Published var imageURL : String = ""
    @Published var isLoading : Bool = false
    @Published  var user : User?
    var authViewModel = AuthViewModel.shared

    init(){fetchProfile()}

    func fetchProfile (){
        fetchUser {
            self.fullName = self.user?.fullName ?? ""
            self.password = self.user?.password ?? ""
            self.imageURL = self.user?.profileImageUrl ?? ""
        
        }
    }
//    func updateEmail (){
//
//    }
//    func updateFullname() {
//
//    }
//
    
    
    func fetchUser(completion:@escaping(()->())){
       // CHALLENGE
    }
    
    
    
    
    func loadImage (){
        guard let avatarImage=avatarImage as Image? else {
            return}
        self.imageURL = ""
        self.avatarImage = Image("default-avatar")
    }

    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
    
    

}


