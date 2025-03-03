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

