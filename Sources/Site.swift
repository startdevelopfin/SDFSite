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
    var url = URL(static: "https://startdevelopfin.github.io")

    var builtInIconsEnabled = true
    var syntaxHighlighterConfiguration: SyntaxHighlighterConfiguration = .init(languages: [.swift, .python, .ruby])
    var feedConfiguration = FeedConfiguration(mode: .full, contentCount: 20, image: .init(url: "https://www.yoursite.com/images/icon32.png", width: 32, height: 32))
    var robotsConfiguration = Robots()
    var author = "Daniel J. Aupont"

    var homePage = Home()
    var tagLayout = Tags()
    var layout = MainLayout()

    var staticLayouts: [any StaticLayout] {
        ContentExamples()
        GridExamples()
        NavigationExamples()
        TextExamples()
        StylingExamples()
        ThemeExamples()

        AccordionExamples()
        AlertExamples()
        BadgeExamples()
        ButtonExamples()
        CardExamples()
        CarouselExamples()
        CodeExamples()
        DropdownExamples()
        EmbedExamples()
        ImageExamples()
        IncludeExamples()
        LinkExamples()
        ListExamples()
        ModalExamples()
        QuoteExamples()
        TableExamples()
    }

    var articleLayouts: [any ArticleLayout] {
        Story()
        CustomStory()
    }
}

