import Foundation

func solution(_ my_string: String, _ letter: String) -> String {
    guard !my_string.isEmpty else { return my_string }
    guard letter.count == 1 else { return my_string }
    return my_string.filter { $0 != Character(letter) }
}