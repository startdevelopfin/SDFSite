//
//  File.swift
//  IgniteStarter
//
//  Created by Dan Aupont on 3/1/25.
//

import Foundation
import Ignite

struct SuggestedArticleLayout: Layout {
    @Environment(\.articles) private var articles

    var body: some HTML {
        Body {
            NavBar()

            Grid {
                content
                    .width(9)
                    .padding(.vertical, 80)

                Section {
                    Text("Read this next…")
                        .font(.title3)

                    if let latest = articles.all.randomElement() {
                        ContentPreview(for: latest)
                    }
                }
                .width(3)
                .position(.stickyTop)
                .padding(.top, 80)
            }

            IgniteFooter()
        }
    }
}
