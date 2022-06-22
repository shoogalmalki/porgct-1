//
//  PageView-onbording.swift
//  porgct 1
//
//  Created by lama aljebreen on 23/11/1443 AH.
//

import SwiftUI

struct PageView_onbording: View {
    var page: Page
    
    var body: some View {
        VStack(spacing: 20) {
            
                    Image("\(page.imageUrl1)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 230, height: 200, alignment: .center)
                        .padding()
                        .background(.mint)
                        .clipShape(Circle())
                        .padding()
                        .offset( y: -100)
            Image("\(page.ImageFont)")
                .resizable()
                .frame(width: 300, height: 50, alignment: .center)
                .offset( y: -100)
                    
            Text(page.description)
                .font(.system(size: 20, weight: .semibold, design: .serif))
//                .fontWeight(.bold)
//                .bold()
                .offset( y: -100)

                }
            }
    }


struct PageView_onbording_Previews: PreviewProvider {
    static var previews: some View {
        PageView_onbording(page: Page.samplePage)
    }
}
