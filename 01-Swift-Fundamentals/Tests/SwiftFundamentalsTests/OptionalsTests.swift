import Testing
import SwiftFundamentals

@Suite("Optionals")
struct OptionalsTests {
    @Test("Parses a plain integer")
    func parsesPlainInteger() {
        #expect(wholeNumber(from: "42") == 42)
    }

    @Test("Parses a negative integer")
    func parsesNegativeInteger() {
        #expect(wholeNumber(from: "-3") == -3)
    }

    @Test("Ignores surrounding whitespace")
    func ignoresSurroundingWhitespace() {
        #expect(wholeNumber(from: "  7 \n") == 7)
    }

    @Test("Returns nil for text that is not a whole number", arguments: ["", "abc", "4.2", "12abc"])
    func returnsNilForInvalidText(text: String) {
        #expect(wholeNumber(from: text) == nil)
    }
}
