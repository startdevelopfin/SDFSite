//
//  File.swift
//  IgniteStarter
//
//  Created by Dan Aupont on 3/2/25.
//

import Foundation
import Ignite

struct Tags: TagLayout {
    var body: some HTML {

        if let tag {
            Text(tag)
                .font(.title1)
        } else {
            Text("All tags")
                .font(.title1)
        }

        List {
            ForEach(content) { article in
                Link(article)
            }
        }
    }
}
