//
//  boxs.swift
//  porgct 1
//
//  Created by sarah hemood  on 23/11/1443 AH.
//

import SwiftUI

struct boxs: View {
    @State var showRectangle: Bool = false
    @State var showRectangle1: Bool = false
    @State var showRectangle2: Bool = false


    var body: some View {
        HStack{
        if showRectangle == true {

        Button.init(action: {
            showRectangle.toggle()

        }, label: {
            ZStack{
Rectangle()
                    .frame(width: 66, height: 55)
                    .foregroundColor(.red)
                    .cornerRadius(13)
                VStack{
            Image("image 1")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    Text("small")
                        .font(.caption2)
                }
            }
        })
        }
        else{
            Button.init(action: {
                showRectangle.toggle()

            }, label: {
                ZStack{
    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color("Color4"))
                        .cornerRadius(13)
                    VStack{
                Image("image 1")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                        Text("small")
                            .font(.caption2)
                    }
                }
            })
        }
        if showRectangle1 == true {

        Button.init(action: {
            showRectangle1.toggle()

        }, label: {
            ZStack{
Rectangle()
                    .frame(width: 66, height: 55)
                    .foregroundColor(.red)
                    .cornerRadius(13)
                VStack{
            Image("image 2")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.black)
                    Text("Medium")
                        .font(.caption2)
                }
            }
        })
        }
        else{
            Button.init(action: {
                showRectangle1.toggle()

            }, label: {
                ZStack{
    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(Color("Color4"))
                        .cornerRadius(13)
                    VStack{
                Image("image 2")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.red)
                        Text("Medium")
                            .font(.caption2)
                    }
                }
            })
        }
            if showRectangle2 == true {

            Button.init(action: {
                showRectangle2.toggle()

            }, label: {
                ZStack{
    Rectangle()
                        .frame(width: 66, height: 55)
                        .foregroundColor(.red)
                        .cornerRadius(13)
                    VStack{
                Image("image 3")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        Text("large")
                            .font(.caption2)
                    }
                }
            })
            }
            else{
                Button.init(action: {
                    showRectangle2.toggle()

                }, label: {
                    ZStack{
        Rectangle()
                            .frame(width: 66, height: 55)
                            .foregroundColor(Color("Color4"))
                            .cornerRadius(13)
                        VStack{
                    Image("image 3")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.red)
                            Text("large")
                                .font(.caption2)
                        }
                    }
                })
            }
        }
    }
}

struct boxs_Previews: PreviewProvider {
    static var previews: some View {
        boxs()
    }
}
