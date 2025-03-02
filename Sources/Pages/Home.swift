//
//  Untitled.swift
//  IgniteStarter
//
//  Created by Dan Aupont on 3/2/25.
//

import Foundation
import Ignite

struct Home: StaticLayout {
    @Environment(\.articles) var articles
    var title = "Home"

    var body: some HTML {
        Text("Welcome Swift enthusiasts!")
            .font(.title1)

        Text("Enjoy monthly posts focused on programming and the Swift community. Be sure to check out the latest content to stay up to date. Thank you for reading.")
            .font(.lead)
            .padding()
//
//        Text("")
//            .font(.title1)
//
//        List {
//            Text(markdown: "[Mentorship](/articles/mentorship)")
//            Text(markdown: "[Speaking Engagement](/articles/speakingengagement)")
//            Text(markdown: "[First Conference](/articles/firstconference)")
//            Text(markdown: "[DTC UB Coding](/articles/codingdtc)")
//        }
//        .listMarkerStyle(.unordered(.automatic))
        
        Text("Latest Posts")
            .font(.title2)
            .padding(.top)
        
        Grid {
            ForEach(articles.tagged("Article")) { item in
                ContentPreview(for: item)
                    .width(4)
                    .margin(.bottom)
            }
        }
        .margin(.bottom, .xLarge)
        
    }
}

