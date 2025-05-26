import Foundation

func solution(_ my_string: String) -> [String] {
    var suffixes: [String] = []
    var current = my_string.startIndex

    while current < my_string.endIndex {
        suffixes.append(String(my_string[current...]))
        current = my_string.index(after: current)
    }

    return suffixes.sorted()
}