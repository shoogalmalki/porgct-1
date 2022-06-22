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
        
    var body: some View {
        TabView(selection: $pageIndex) {
                    ForEach(pages) { page in
                        VStack {
                            Spacer()
                PageView_onbording(page: page)
                            Spacer()
                            if page == pages.last {
                                Button("Get started", action: goToZero)
//   move to homepage
                                    .foregroundColor(.white)
                                    .frame(width: 300, height: 50)
                                     .background(Color(UIColor.systemMint))
                                    .cornerRadius(10)
                            } else {
                                Button("next", action: incrementPage)

                                    .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color(UIColor.systemMint))
                            .cornerRadius(10)
                            }
                            Spacer()
                        }
                        .tag(page.tag)
                    }
                }
                .animation(.easeInOut, value: pageIndex)// 2
                .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                .tabViewStyle(PageTabViewStyle())
                .onAppear {
                    dotAppearance.currentPageIndicatorTintColor = .black
                    dotAppearance.pageIndicatorTintColor = .gray
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

