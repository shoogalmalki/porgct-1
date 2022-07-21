//
//  UserModel.swift
//  Habhoob
//
//  Created by sarah hemood  on 05/12/1443 AH.
//

import Foundation
/*struct User{

    let id : String
    let fullName : String
    let password : String
    let email : String
    let profileImageUrl : String

    init(dictionary:[String:Any]){
        self.id = dictionary[User.id] as? String ?? UUID().uuidString
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
*/

struct User:Codable{
    enum CodingKeys: String, CodingKey {
        case userId = "userID"
        case fullName = "fullName"
//        case password = "password"
        case email = "email"
        case phoneNumber = "phone"
//        case profileImageUrl = "profileImageUrl"
//        case driverLicenceImageUrl = "driverLicenceImageUrl"
//        case insuranceImageUrl = "insuranceImageUrl"
        case roleType = "type"
    }
    var userId:String = ""
    var fullName:String = ""
    var password:String = ""
    var email:String = ""
    var profileImageUrl:String = ""
    var driverLicenceImageUrl:String = ""
    var insuranceImageUrl:String = ""
    var roleType:String = "customer"
    var phoneNumber:String = ""

    init() {
        
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        userId = try container.decodeIfPresent(String.self, forKey: .userId) ?? ""
        fullName = try container.decodeIfPresent(String.self, forKey: .email) ?? ""
//        password = try container.decodeIfPresent(String.self, forKey: .password) ?? ""
        email = try container.decodeIfPresent(String.self, forKey: .email) ?? ""
//        profileImageUrl = try container.decodeIfPresent(String.self, forKey: .profileImageUrl) ?? ""
//        driverLicenceImageUrl = try container.decodeIfPresent(String.self, forKey: .driverLicenceImageUrl) ?? ""
//        insuranceImageUrl = try container.decodeIfPresent(String.self, forKey: .insuranceImageUrl) ?? ""
        roleType = try container.decodeIfPresent(String.self, forKey: .roleType) ?? "customer"
        phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber) ?? ""
    }
}
/*class DictionaryEncoder {
    private let jsonEncoder = JSONEncoder()

    /// Encodes given Encodable value into an array or dictionary
    func encode<T>(_ value: T) throws -> Any where T: Encodable {
        let jsonData = try jsonEncoder.encode(value)
        return try JSONSerialization.jsonObject(with: jsonData, options: .allowFragments)
    }
}
class DictionaryDecoder {
    private let jsonDecoder = JSONDecoder()

    /// Decodes given Decodable type from given array or dictionary
    func decode<T>(_ type: T.Type, from json: Any) throws -> T where T: Decodable {
        let jsonData = try JSONSerialization.data(withJSONObject: json, options: [])
        return try jsonDecoder.decode(type, from: jsonData)
    }
}*/
