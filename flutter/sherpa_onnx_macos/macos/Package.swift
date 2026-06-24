// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "sherpa_onnx_macos",
    platforms: [.macOS(.v10_11)],
    products: [
        .library(name: "sherpa_onnx_macos", targets: ["sherpa_onnx_macos", "onnxruntime"]),
    ],
    targets: [
        .binaryTarget(
            name: "sherpa_onnx_macos",
            path: "sherpa-onnx.xcframework"
        ),
        .binaryTarget(
            name: "onnxruntime",
            path: "onnxruntime.xcframework"
        ),
    ]
)
