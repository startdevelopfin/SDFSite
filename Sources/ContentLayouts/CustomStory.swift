//
//  File.swift
//  IgniteStarter
//
//  Created by Dan Aupont on 3/1/25.
//

import Foundation
import Ignite

struct CustomStory: ArticleLayout {
    var body: some HTML {
        if let image = article.image {
            Image(image, description: article.imageDescription)
                .resizable()
        }

        Text(article.title)
            .font(.title1)

        if let tagLinks = article.tagLinks() {
            Text(tagLinks)
                .font(.title3)
        }

        Text(article.text)
    }
}
