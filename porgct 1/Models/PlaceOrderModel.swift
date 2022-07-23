//
//  PlaceOrderModel.swift
//  Habhoob
//
//  Created by Akshay shah on 21/07/22.
//

import Foundation


struct PlaceOrderModel:Codable {
    
//    enum CodingKeys: String, CodingKey {
//        case userId = "userID"
//        case orderId = "orderID"
//        case pickupCity = "pickupCity"
//        case dropoffCity = "dropOffCity"
//        case placeOrderDateTime = "placeOrderDateTime"
//        case placeOrderTimeSlot = "placeOrderTimeSlot"
//        case orderBookedStatus = "orderBookedStatus"
//        case clientName = "clientName"
//        case imageURL = "imageURL"
//        case offeredBy = "offeredBy"
//        case offers = "offers"
//        case desc = "desc"
//        case shipmentSize = "shipmentSize"
//        case acceptedDriverId = "acceptedDriverId"
//    }
    var userId:String = ""
    var acceptedDriverId:String = ""
    var pickupCity:String = ""
    var dropoffCity:String = ""
    var placeOrderDateTime:String = ""
    var placeOrderTimeSlot:String = ""
    var tripStatus:String = ""
    var shipmentImageURL:String = ""
    var offerAmount:String = ""
    var shipmentSize:String = ""
    var driverName = ""
    var driverPhoneNumber = ""
    var customerName = ""
    var customerPhoneNumber = ""
    var desc:String = ""
    

    init() {
        
    }
    
    
}
