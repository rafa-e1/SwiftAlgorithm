import Foundation

func solution(_ my_string: String, _ indices: [Int]) -> String {
    let toRemove = Set(indices)
    return my_string.enumerated()
        .filter { !toRemove.contains($0.offset) }
        .map { String($0.element) }
        .joined()
}