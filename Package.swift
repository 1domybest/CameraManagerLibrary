// swift-tools-version: 6.0
import PackageDescription


let package = Package(
    name: "CameraManagerLibrary",
    platforms: [
        .iOS(.v14) // 지원하는 최소 플랫폼 버전 설정
    ],
    products: [
        .library(
            name: "CameraManagerLibrary",
            targets: ["CameraManagerLibrary"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "CameraManagerFrameWork", // .xcframework 타겟 참조
            path: "Frameworks/CameraManagerFrameWork.xcframework" // .xcframework 경로
        ),
        .target(
            name: "CameraManagerLibrary",
            dependencies: [
                .target(name: "CameraManagerFrameWork"), // .xcframework 링크
            ],
            path: "Sources/CameraManagerLibrary",
            resources: [
                .process("CameraMetalShader.metallib") // .metallib 파일 추가
            ]
        ),
    ]
)
