import Foundation

func solution(_ my_string: String) -> String {
    let chars = my_string.lowercased().map { $0 }
    let sortedChars = chars.sorted()
    return String(sortedChars)
}