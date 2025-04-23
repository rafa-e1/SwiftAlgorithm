import Foundation

func solution(_ my_string: String) -> [Int] {
    return my_string.compactMap { char in
        char.isNumber ? Int(String(char)) : nil
    }.sorted()
}