import Foundation

func solution(_ my_string: String) -> String {
    guard my_string.count >= 1, my_string.count <= 1_000 else { return "" }
    return String(my_string.reversed())
}