import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = SDFSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct SDFSite: Site {
    var name = "Start. Develop. Finish."
    var titleSuffix = " – Swift Blog Site"
    var url = URL(static: "https://startdevelopfin.github.io/SDFSite/")
    var basePath = "/SDFSite"
    var prefixAllRelativeURLs = true
    var builtInIconsEnabled = true
    var syntaxHighlighterConfiguration: SyntaxHighlighterConfiguration = .init(languages: [.swift, .python, .ruby])
    var feedConfiguration = FeedConfiguration(mode: .full, contentCount: 20)
    var robotsConfiguration = Robots()
    var author = "Daniel J. Aupont"

    var homePage = Home()
    var tagLayout = Tags()
    var layout = SuggestedArticleLayout()

    var articleLayouts: [any ArticleLayout] {
        Story()
        CustomStory()
    }
}

