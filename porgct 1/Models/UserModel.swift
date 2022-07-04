//
//  UserModel.swift
//  Habhoob
//
//  Created by sarah hemood  on 05/12/1443 AH.
//

import Foundation
struct User{

    let id : String
    let fullName : String
    let password : String
    let email : String
    let profileImageUrl : String

    init(dictionary:[String:Any]){
        self.id = dictionary[User.id]  as! String
        self.fullName = dictionary[User.fullName]  as? String ?? "N/A"
        self.password = dictionary[User.password]  as? String ?? "N/A"
        self.email = dictionary[User.email]  as? String ?? "N/A"
        self.profileImageUrl = dictionary[User.profileImageUrl]  as? String ?? "N/A"
    }

    
    func getUserData()->([String:String]){
        
        var data :[String:String] = [:]
        
        data[User.id] = self.id
        
        data[User.fullName]  = self.fullName
        
        data[User.password]  = self.password
        
        data[User.email]  = self.email
        
        data[User.profileImageUrl] = self.profileImageUrl
        
        return data
        
    }
    
    static let id              = "id"
    static let fullName       = "firstName"
    static let password        = "password"
    static let email           = "email"
    static let profileImageUrl = "profileImageUrl"

    
    static let user = User(dictionary: [User.id:"123",
                                  User.fullName:"Sara",
                                  User.password:"76544fghh",
                                  User.email:"Sara@twq.edu.sa",
                                  User.profileImageUrl:"https://firebasestorage.googleapis.com:443/v0/b/twitterswiftui-a8508.appspot.com/o/CFC1EA29-B453-48FC-956E-7D2E0831BE6D?alt=media&token=49a4015f-25b1-4b49-8f78-b88883066c73"])
   
}
