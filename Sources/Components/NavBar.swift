//
//  NavBar.swift
//  IgniteStarter
//
//  Created by Dan Aupont on 3/1/25.
//

import Foundation
import Ignite

/// An example navigation bar, demonstrating how to create reusable components.
//struct NavBar: HTML {
//    var body: some HTML {
//        NavigationBar(logo: "Start. Develop. Finish.") {
//            Dropdown("App Store") {
//                Link("By Rule", target: "https://byruleapp.com")
//            }
//            
//            Dropdown("SwiftUI 100") {
//                Text(markdown: "[Week 1](story/swiftuiweek1)")
//            }
//        }
//        .navigationItemAlignment(.trailing)
//        .navigationBarStyle(.dark)
//        .background(.black)
//        .position(.fixedTop)
//    }
//}
struct NavBar: HTML {
    var body: some HTML {
        NavigationBar(logo: "Start. Develop. Finish.") {
            Link("Start. Develop. Finish.", target: "/SDFSite/")  // Ensure it's pointing to /SDFSite/
            
            Dropdown("App Store") {
                Link("By Rule", target: "https://byruleapp.com")
            }
            
            Dropdown("SwiftUI 100") {
                Text(markdown: "[Week 1](story/swiftuiweek1)")
            }
        }
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.black)
        .position(.fixedTop)
    }
}
