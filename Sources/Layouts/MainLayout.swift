import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some HTML {
        Body {
            NavBar()
                .padding(.bottom, 80)

            content

            Section {
                SocialFooter()
                IgniteFooter()
            }
        }
    }
}

