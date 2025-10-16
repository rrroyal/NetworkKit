// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "NetworkKit",
	platforms: [
		.iOS(.v17),
		.macOS(.v14),
		.watchOS(.v10),
		.tvOS(.v17),
		.visionOS(.v1)
	],
	products: [
		.library(
			name: "NetworkKit",
			targets: ["NetworkKit"]
		)
	],
	targets: [
		.target(name: "NetworkKit")
//		.testTarget(
//			name: "NetworkKitTests",
//			dependencies: ["NetworkKit"]
//		)
	]
)
