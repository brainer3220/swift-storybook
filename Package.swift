// swift-tools-version:6.0
import PackageDescription

// brainer3220 fork of eure/swift-storybook 2.9.1 (MIT).
// 매크로 타깃(StorybookMacrosPlugin)과 Texture 지원을 뺀 축소판:
// CI·Xcode Cloud가 매크로 신뢰 대화상자 없이 바로 빌드되게 하기 위함.
// #Preview 자동 수집 등 런타임 기능은 원본과 같다.
let package = Package(
  name: "Storybook",
  platforms: [
    .iOS(.v16),
    .macCatalyst(.v15),
    .macOS(.v10_15),
  ],
  products: [
    .library(name: "StorybookKit", targets: ["StorybookKit"]),
  ],
  dependencies: [
    .package(url: "https://github.com/FluidGroup/swiftui-support", from: "0.4.1"),
    .package(url: "https://github.com/FluidGroup/ResultBuilderKit", from: "1.3.0"),
  ],
  targets: [
    .target(
      name: "StorybookKit",
      dependencies: [
        .product(name: "SwiftUISupport", package: "swiftui-support"),
        "ResultBuilderKit",
      ]
    ),
  ],
  swiftLanguageModes: [.v6, .v5]
)
