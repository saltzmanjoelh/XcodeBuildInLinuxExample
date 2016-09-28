import XCTest
#if !os(Linux)
//    import DockerTask
//    import XcodeLinuxBridge
#endif
@testable import XcodeBuildInLinuxExample

//To enable testing go to the test suite's build settings, Add User-Defined Setting, name TEST_IN_LINUX, value 1

class XcodeBuildInLinuxExampleTests: XCTestCase {
    override func setUp() {
        #if !os(Linux)
            if let shouldTest = ProcessInfo.processInfo.environment["TEST_IN_LINUX"] {
                if shouldTest == "1" {
                    continueAfterFailure = false
//                    TestInLinux(self.name)
                    return
                }
            }
            
        #endif
        
    }

    func testText() {
        
        
        let e = Example()
        
        let text = e.text
        #if os(Linux)
            XCTAssert(false)
        #endif
        
        XCTAssertEqual(text, "Hello, World!")
    }


    static var allTests : [(String, (XcodeBuildInLinuxExampleTests) -> () throws -> Void)] {
        return [
            ("testText", testText),
        ]
    }
}
