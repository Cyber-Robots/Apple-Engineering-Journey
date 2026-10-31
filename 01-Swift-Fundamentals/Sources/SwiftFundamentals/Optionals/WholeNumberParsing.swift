import Foundation

/// Extracts a whole number from user-provided text.
///
/// Leading and trailing whitespace is ignored. The result is an optional
/// because not every string contains a number: instead of crashing or
/// returning a misleading default such as `0`, the function returns `nil`,
/// and the caller must handle that case explicitly.
///
/// - Parameter text: The text that should contain a whole number.
/// - Returns: The parsed integer, or `nil` if `text` is not a valid whole number.
public func wholeNumber(from text: String) -> Int? {
    Int(text.trimmingCharacters(in: .whitespacesAndNewlines))
}
