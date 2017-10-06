// swift-tools-version:3.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ProbeServer",
    targets: [
        Target(
            name: "ProbeServer",
            dependencies: ["ProbeServerCore"]
        ),
        Target(name: "ProbeServerCore"),
        ],
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 1),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger.git", majorVersion: 1),
        .Package(url: "https://github.com/IBM-Swift/Swift-Kuery.git", majorVersion: 0),
        .Package(url: "https://github.com/IBM-Swift/Swift-Kuery-PostgreSQL.git", majorVersion: 0),
        ]
)


