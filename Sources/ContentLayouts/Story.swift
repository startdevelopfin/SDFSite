//
//  File.swift
//  IgniteStarter
//
//  Created by Dan Aupont on 3/1/25.
//

import Foundation
import Ignite

struct Story: ArticleLayout {
    var body: some HTML {
        Text(article.title)
            .font(.title1)

//        if let image = article.image {
//            Image(image, description: article.imageDescription)
//                .resizable()
//                .cornerRadius(20)
//                .frame(maxHeight: 300)
//        }

        Text(article.text)
        
        if let tags = article.tags {
            Section {
                Text("Tagged with: \(tags.joined(separator: ", "))")

                Text("\(article.estimatedWordCount) words; \(article.estimatedReadingMinutes) minutes to read.")
            }
        }
    }
}
