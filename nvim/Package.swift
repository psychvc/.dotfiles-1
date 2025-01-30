// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterSitter",
    products: [
        .library(name: "TreeSitterSitter", targets: ["TreeSitterSitter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterSitter",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterSitterTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterSitter",
            ],
            path: "bindings/swift/TreeSitterSitterTests"
        )
    ],
    cLanguageStandard: .c11
)
