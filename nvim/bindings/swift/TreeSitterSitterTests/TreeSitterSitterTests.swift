import XCTest
import SwiftTreeSitter
import TreeSitterSitter

final class TreeSitterSitterTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_sitter())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Sitter grammar")
    }
}
