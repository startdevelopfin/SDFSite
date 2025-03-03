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
        
        
            Text("Enjoy a variety of posts focused on programming and the Swift community. Follow along as I use SwiftUI fundamentals to build cool apps and be sure to check out the latest content to stay up to date. Thank you for reading!")
                .font(.lead)
                .padding()
        Card {
            Carousel {
                Slide(background: "/images/photos/CardImage3.png")
                Slide(background: "/images/photos/CardImage2.png")
            }
            .carouselStyle(.crossfade)
            
        }
        .cardStyle(.default)

        Text("Latest")
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

