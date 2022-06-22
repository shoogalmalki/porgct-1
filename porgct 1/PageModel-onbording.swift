//
//  PageModel-onbording.swift
//  porgct 1
//
//  Created by lama aljebreen on 23/11/1443 AH.
//

import Foundation

struct Page: Identifiable, Equatable {
    let id = UUID()
    var ImageFont: String
    var description: String
    var imageUrl1: String
    var tag: Int
    
    static var samplePage = Page(ImageFont: "fonthabo", description: """
schedule your shipmentsand
              get best offers
""", imageUrl1: "Habo2", tag: 0)
    
    static var samplePages: [Page] = [
        Page(ImageFont: "fonthabo", description: """
schedule your shipmentsand
              get best offers
""", imageUrl1: "Habo2", tag: 0),
        Page(ImageFont: "fonthabo", description: """
We guarantee a safe delivery and
           a great experience!!
""", imageUrl1: "Habo2", tag: 1),
       
    ]
}
