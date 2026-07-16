// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-Mintegral",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunMintegral", targets: ["AdfurikunMintegral"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.4.000"
        ),
        .package(
            url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git",
            exact: "8.0.5"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunMintegral",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
