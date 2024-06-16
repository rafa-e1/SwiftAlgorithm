import Foundation

func solution(_ my_string: String, _ n: Int) -> String {
    guard my_string.count >= 2, my_string.count <= 5, 2...10 ~= n else { return "" }
    return my_string.flatMap { String(repeating: $0, count: n) }.joined()
}
