import XCTest
@testable import Core

final class InfraredLayoutParserTests: XCTestCase {
    func testLayout() throws {
        let actualLayout = try InfraredLayoutParser.shared.process(.kitchenJson)
        XCTAssertEqual(actualLayout, InfraredLayout.mock)
    }
}
