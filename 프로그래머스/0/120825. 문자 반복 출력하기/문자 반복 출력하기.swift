import Foundation

func solution(_ my_string: String, _ n: Int) -> String {
    return my_string.flatMap { String(repeating: $0, count: n) }.joined()
}
