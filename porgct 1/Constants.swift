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

enum TripStatusType:Int, CustomStringConvertible {
    case placeTrip = 0
    case customerAccepted = 1
    case driverAccepted = 2
    case tripOnGoing = 3
    case paymentCompleteByCustomer = 4
    case tripCompleted = 5
    case tripCompleteByDispute = 6
    case tripCancelledByCustomer = 7
    case tripCancelledByDriver = 8
    case tripCance
    
    public var description: String {
      get {
        switch self {
            case .placeTrip:
                return "tripStart"
            case .customerAccepted:
                return "customerAccepted"
            case .driverAccepted:
                return "driverAccepted"
            case .paymentCompleteByCustomer:
                return "paymentComplete"
        case .
        }
      }
    }
}
