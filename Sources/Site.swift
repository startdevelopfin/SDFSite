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
    
    // Add a custom URL transformer that all components can use
    func transformURL(_ path: String) -> String {
        if path.hasPrefix("http") {
            // External URLs don't need transformation
            return path
        } else if path.hasPrefix("/") {
            // Absolute paths need the basePath
            return basePath + path
        } else {
            // Relative paths need a separator and basePath
            return basePath + "/" + path
        }
    }
}

// Then use an extension on components that need URL handling
extension Link {
    // Create a convenience initializer that uses the site's URL transformer
    init(text: String, to path: String, in site: SDFSite) {
        self.init(text, target: site.transformURL(path))
    }
}

