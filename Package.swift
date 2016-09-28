import PackageDescription

let package = Package(
    name: "XcodeBuildInLinuxExample",
    dependencies: [
        .Package(url: "https://github.com/saltzmanjoelh/XcodeHelper.git", versions: Version(0,0,0)..<Version(10,0,0)),
        //using a dependency that has it's own dependency
        .Package(url: "https://github.com/saltzmanjoelh/HelloSwift.git", versions: Version(0,0,0)..<Version(10,0,0))
    ]
)
