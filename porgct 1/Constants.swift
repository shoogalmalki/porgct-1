//
//  Constants.swift
//  Habhoob
//
//  Created by Akshay shah on 20/07/22.
//

import Foundation

let LOGIN_UID = "LOGIN_UID"
let LOGIN_EMAIL = "LOGIN_EMAIL"
let LOGIN_USER_TYPE = "LOGIN_USER_TYPE"

enum RoleType:Int, CustomStringConvertible {
    case none = 0
    case driver
    case user
    
    public var description: String {
      get {
        switch self {
            case .driver:
                return "Driver"
            case .user:
                return "Customer"
            case .none:
                return "None"
        }
      }
    }
}
