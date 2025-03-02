//
//  File.swift
//  IgniteStarter
//
//  Created by Dan Aupont on 3/1/25.
//

import Foundation
import Ignite

/// Displays a global "Social Footer", with each social icon linking to an
/// external site in a new browser tab, demonstrating how to create reusable
/// components with builtIn icons, external links and custom attributes.
struct SocialFooter: HTML {
    let icons = [
        Image(systemName: "github"),
        Image(systemName: "twitter"),
    ]

    let urlStrings = [
        "https://github.com/startdevelopfin",
        "https://twitter.com/startdevelopfin",
    ]

    var body: some HTML {
        Text {
            ForEach(zip(icons, urlStrings)) { (icon, urlString) in
                Link(icon, target: urlString)
                    .role(.secondary)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                    .margin(.trailing, 20)
            }
        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
        .font(.title2)
    }
}
