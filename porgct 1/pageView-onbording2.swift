//
//  pageView-onbording2.swift
//  porgct 1
//
//  Created by lama aljebreen on 23/11/1443 AH.
//

import SwiftUI

struct pageView_onbording2: View {
    
    @State private var pageIndex = 0
    private let pages: [Page] = Page.samplePages
    private let dotAppearance = UIPageControl.appearance()
    @State var shouldGoToNextView: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                TabView(selection: $pageIndex) {
                    ForEach(pages) { page in
                        VStack {
                            Spacer()
                          PageView_onbording(page: page)

                            Spacer()
                            if page == pages.last {
                        
                                NavigationLink(destination: {
                                    Home_User().navigationBarBackButtonHidden(true)
                                }, label: {
                                    Text("Get started")
                                        .foregroundColor(.white)
                                        .frame(width: 300, height: 50)
                                        .background(Color(UIColor.systemMint))
                                        .cornerRadius(10)
                                })

                               
                            } else {
                                Button(
                                    action: incrementPage,
                                    label: {
                                        Text("next")
                                            .foregroundColor(.white)
                                            .frame(width: 300, height: 50)
                                            .background(Color(UIColor.systemMint))
                                            .cornerRadius(10)

                                    }
                                )
                                
                            }
                            Spacer()
                        }
                        .tag(page.tag)
                    }

                }
                .animation(.easeInOut, value: pageIndex)// 2
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                .tabViewStyle(PageTabViewStyle())
            }
            .onAppear {
                dotAppearance.currentPageIndicatorTintColor = .black
                dotAppearance.pageIndicatorTintColor = .gray
            }
            .navigationBarHidden(true)
        }
    }
    
    func incrementPage() {
        pageIndex += 1
    }
    
    func goToZero() {
        pageIndex = 0
    }
}



struct pageView_onbording2_Previews: PreviewProvider {
    static var previews: some View {
        pageView_onbording2()
    }
}

