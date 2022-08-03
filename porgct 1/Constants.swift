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
let LOGIN_USER_NAME = "LOGIN_USER_NAME"

enum EnvironmentType:Int {
    case development = 0
    case staging
    case production
}

let appEnvironmentType:EnvironmentType = .production

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

enum DriverModeType:Int, CustomStringConvertible {
    case on = 0
    case off
    
    public var description: String {
      get {
        switch self {
            case .on:
                return "on"
            case .off:
                return "off"
        }
      }
    }
}
enum ImageType{
    case driverCarLicenceImage
    case driverCarInsuranceImage
    case driverPhoto
    case customerPhoto
}
enum ShipmentItemSize:Int, CustomStringConvertible {
    case empty = 0
    case small
    case medium
    case large
    
    public var description: String {
      get {
        switch self {
            case .empty:
                return ""
            case .small:
                return "small"
            case .medium:
                return "medium"
            case .large:
                return "large"
        }
      }
    }
}

enum TripStatusType:Int, CustomStringConvertible {
    case none = 0
    case placeTrip
    case customerAccepted
    case driverAccepted
    case tripOnGoing
    case paymentCompleteByCustomer
    case tripCompleted
    case tripCancelledByCustomer
    case tripCancelledByDriver
    
    public var description: String {
      get {
        switch self {
            case .none:
                return "none"
            case .placeTrip:
                return "tripStart"
            case .customerAccepted:
                return "customerAccepted"
            case .driverAccepted:
                return "driverAccepted"
            case .paymentCompleteByCustomer:
                return "paymentComplete"
            case .tripOnGoing:
                return "tripOnGoing"
            case .tripCompleted:
                return "tripCompleted"
            case .tripCancelledByCustomer:
                return "tripCancelledByCustomer"
            case .tripCancelledByDriver:
                return "tripCancelledByDriver"
        }
      }
    }
}
