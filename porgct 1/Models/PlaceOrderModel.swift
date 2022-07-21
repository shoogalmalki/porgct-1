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
    var pickupCity:String = ""
    var dropoffCity:String = ""
    var placeOrderDateTime:String = ""
    var placeOrderTimeSlot:String = ""
    var orderBookedStatus:String = ""
    var clientName:String = ""
    var imageURL:String = ""
    var offeredBy:String = "customer"
    var offers:String = ""
    var desc:String = ""
    var shipmentSize:String = ""
    var acceptedDriverId:String = ""
    

    init() {
        
    }
    
    
}
