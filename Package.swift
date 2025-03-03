// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Start. Develop. Fin.",
    platforms: [.macOS(.v13)],
    dependencies: [
        .package(url: "https://github.com/twostraws/Ignite.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "IgniteStarter",
            dependencies: ["Ignite"]),
    ]
)
//name: Deploy to GitHub Pages
//
//on:
//  push:
//    branches: [ main ]  # Change to master if that's your default branch
//
//jobs:
//  build:
//    runs-on: macos-latest
//    steps:
//      - name: Install Swift 6
//        run: |
//          sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
//          swift --version  # Verify Swift 6 is being used
//
//  deploy:
//    runs-on: macos-latest
//    steps:
//      - uses: actions/checkout@v3
//      - name: Deploy to GitHub Pages
//        run: |
//          # Your deployment commands here

//# Simple workflow for deploying static content to GitHub Pages
//name: Deploy static content to Pages
//
//on:
//  # Runs on pushes targeting the default branch
//  push:
//    branches: ["main"]  # Change this if your branch is named differently
//
//  # Allows you to run this workflow manually from the Actions tab
//  workflow_dispatch:
//
//# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
//permissions:
//  contents: read
//  pages: write
//  id-token: write
//

// fix styling
//# Simple workflow for deploying static content to GitHub Pages
//name: Deploy static content to Pages
//
//on:
//  # Runs on pushes targeting the default branch
//  push:
//    branches: ["main"]  # Change this if your branch is named differently
//
//  # Allows you to run this workflow manually from the Actions tab
//  workflow_dispatch:
//
//# Sets permissions of the GITHUB_TOKEN to allow deployment to GitHub Pages
//permissions:
//  contents: read
//  pages: write
//  id-token: write
//
//# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
//# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
//concurrency:
//  group: "pages"
//  cancel-in-progress: false
//
//jobs:
//  # Single deploy job since we're just deploying
//  deploy:
//    environment:
//      name: github-pages
//      url: ${{ steps.deployment.outputs.page_url }}
//    runs-on: ubuntu-latest
//    steps:
//      - name: Checkout
//        uses: actions/checkout@v4
//      - name: Setup Pages
//        uses: actions/configure-pages@v5
//      - name: Upload artifact
//        uses: actions/upload-pages-artifact@v3
//        with:
//          path: './Build'
//      - name: Deploy to GitHub Pages
//        id: deployment
//        uses: actions/deploy-pages@v4


//fix links
//# Allow only one concurrent deployment, skipping runs queued between the run in-progress and latest queued.
//# However, do NOT cancel in-progress runs as we want to allow these production deployments to complete.
//concurrency:
//  group: "pages"
//  cancel-in-progress: false
//
//jobs:
//  # Single deploy job since we're just deploying
//  deploy:
//    environment:
//      name: github-pages
//      url: ${{ steps.deployment.outputs.page_url }}
//    runs-on: ubuntu-latest
//    steps:
//      - name: Checkout
//        uses: actions/checkout@v4
//      - name: Setup Pages
//        uses: actions/configure-pages@v5
//      - name: Fix Paths for SDFSite
//        run: |
//          grep -rl 'href="/' Build/ | xargs sed -i 's|href="/|href="/SDFSite/|g'
//          grep -rl 'src="/' Build/ | xargs sed -i 's|src="/|src="/SDFSite/|g'
//      - name: Upload artifact
//        uses: actions/upload-pages-artifact@v3
//        with:
//          path: './Build'
//      - name: Deploy to GitHub Pages
//        id: deployment
//        uses: actions/deploy-pages@v4
//
